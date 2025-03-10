package com.b_be_bee.b_be_bee_app

import android.content.Intent
import android.provider.Settings
import android.content.ContentValues
import android.media.RingtoneManager
import android.provider.MediaStore
import java.io.File
import android.annotation.SuppressLint
import android.app.Activity
import android.database.Cursor
import android.net.Uri
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import com.ryanheise.audioservice.AudioServiceActivity

private const val CHANNEL = "com.b_be_bee.b_be_bee_app/b_be_bee"
private const val REQUEST_CODE_WRITE_SETTINGS = 2023

class MainActivity : AudioServiceActivity() {
    private var pendingResult: MethodChannel.Result? = null
    private var pendingRingtoneData: Map<String, Any>? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        ).setMethodCallHandler { call, result ->
            when (call.method) {
                "setRingtone" -> {
                    pendingResult = result
                    pendingRingtoneData = call.arguments()
                    checkAndRequestWriteSettingsPermission()
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun checkAndRequestWriteSettingsPermission() {
        if (!Settings.System.canWrite(this)) {
            val intent = Intent(Settings.ACTION_MANAGE_WRITE_SETTINGS).apply {
                data = Uri.parse("package:$packageName")
            }
            startActivityForResult(intent, REQUEST_CODE_WRITE_SETTINGS)
        } else {
            handleSetRingtone()
        }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode == REQUEST_CODE_WRITE_SETTINGS) {
            if (Settings.System.canWrite(this)) {
                handleSetRingtone()
            } else {
                pendingResult?.error(
                    "PERMISSION_DENIED",
                    "Write settings permission denied",
                    null
                )
                clearPendingOperation()
            }
        }
    }

    private fun handleSetRingtone() {
        val data = pendingRingtoneData
        val result = pendingResult
        if (data == null || result == null) {
            return
        }

        try {
            val audioFilePath = data["audioFilePath"] as String
            val format = data["format"] as String
            val title = data["title"] as String

            val values = ContentValues().apply {
                put(MediaStore.MediaColumns.DATA, audioFilePath)
                put(MediaStore.MediaColumns.TITLE, title)
                put(MediaStore.MediaColumns.MIME_TYPE, "audio/$format")
                put(MediaStore.MediaColumns.SIZE, File(audioFilePath).length())
                put(MediaStore.Audio.Media.IS_RINGTONE, true)
                put(MediaStore.Audio.Media.IS_NOTIFICATION, true)
                put(MediaStore.Audio.Media.IS_ALARM, true)
                put(MediaStore.Audio.Media.IS_MUSIC, false)
            }

            val uri = contentResolver.insert(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, values)

            if (uri != null) {
                RingtoneManager.setActualDefaultRingtoneUri(
                    this,
                    RingtoneManager.TYPE_RINGTONE,
                    uri
                )
                result.success("Ringtone set successfully")
            } else {
                result.error("ERROR", "Failed to insert ringtone", null)
            }
        } catch (e: Exception) {
            e.printStackTrace()
            result.error("ERROR", "Failed to set ringtone: ${e.message}", null)
        } finally {
            clearPendingOperation()
        }
    }

    private fun clearPendingOperation() {
        pendingResult = null
        pendingRingtoneData = null
    }
}


