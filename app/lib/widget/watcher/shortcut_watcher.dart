import 'package:b_be_bee_app/controller/main_page_controller.dart';
import 'package:b_be_bee_app/model/enum/main_tab_enum.dart';
import 'package:b_be_bee_app/util/shortcut_utils.dart';
import 'package:b_be_bee_app/widget/watcher/window_watcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';


class ShortcutWatcher extends ConsumerWidget {
  final Widget child;

  const ShortcutWatcher({required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Shortcuts(
      shortcuts: {
        // The select button on AndroidTV needs this to work
        LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),

        LogicalKeySet.fromSet({
            LogicalKeyboardKey.control,
            LogicalKeyboardKey.shift,
            LogicalKeyboardKey.keyQ}): _ExitAppIntent(),

        LogicalKeySet.fromSet({
            LogicalKeyboardKey.meta,
            LogicalKeyboardKey.shift,
            LogicalKeyboardKey.keyQ}): _ExitAppIntent(),

        LogicalKeySet.fromSet({
            LogicalKeyboardKey.control,
            LogicalKeyboardKey.shift,
            LogicalKeyboardKey.keyW}): _CloseWindowIntent(),

        LogicalKeySet.fromSet({
            LogicalKeyboardKey.meta,
            LogicalKeyboardKey.shift,
            LogicalKeyboardKey.keyW}): _CloseWindowIntent(),

        LogicalKeySet(LogicalKeyboardKey.escape): _PopPageIntent(),

        // Control+V and Command+V
        LogicalKeySet(LogicalKeyboardKey.control,
            LogicalKeyboardKey.keyV): _PasteIntent(),
        LogicalKeySet(
            LogicalKeyboardKey.meta, LogicalKeyboardKey.keyV): _PasteIntent(),


        LogicalKeySet(LogicalKeyboardKey.space): _PauseIntent(),

        LogicalKeySet(LogicalKeyboardKey.control,
            LogicalKeyboardKey.arrowRight): _NextIntent(),
        LogicalKeySet(LogicalKeyboardKey.meta,
            LogicalKeyboardKey.arrowRight): _NextIntent(),

        LogicalKeySet(LogicalKeyboardKey.control,
            LogicalKeyboardKey.arrowLeft): _PreviousIntent(),
        LogicalKeySet(LogicalKeyboardKey.meta,
            LogicalKeyboardKey.arrowLeft): _PreviousIntent(),

        LogicalKeySet(LogicalKeyboardKey.control,
            LogicalKeyboardKey.keyR): _CycleRepeatModeIntent(),
        LogicalKeySet(LogicalKeyboardKey.meta,
            LogicalKeyboardKey.keyR): _CycleRepeatModeIntent(),

        LogicalKeySet(LogicalKeyboardKey.control,
            LogicalKeyboardKey.arrowUp): _VolumeUpIntent(),
        LogicalKeySet(LogicalKeyboardKey.meta,
            LogicalKeyboardKey.arrowUp): _VolumeUpIntent(),

        LogicalKeySet(LogicalKeyboardKey.control,
            LogicalKeyboardKey.arrowDown): _VolumeDownIntent(),
        LogicalKeySet(LogicalKeyboardKey.meta,
            LogicalKeyboardKey.arrowDown): _VolumeDownIntent(),

        LogicalKeySet(LogicalKeyboardKey.control,
            LogicalKeyboardKey.keyN): _NewPlaylistIntent(),
        LogicalKeySet(LogicalKeyboardKey.meta,
            LogicalKeyboardKey.keyN): _NewPlaylistIntent(),


      },
      child: Actions(
        actions: {

          _PopPageIntent: CallbackAction(onInvoke: (_) async =>
              Navigator.of(Routerino.context).maybePop()),
          _PasteIntent: CallbackAction(onInvoke: (_) async {
            if (context.mounted) {
              await ref.read(mainPageProvider.notifier).changeTab(
                  MainTabEnum.collects);
            }
            return null;
          }),
          _CloseWindowIntent: CallbackAction<_CloseWindowIntent>(
            onInvoke: (_) async {
              if (_isFakeMetaKey()) {
                return null;
              }

              await WindowWatcher.closeWindow(context);
              return null;
            },
          ),
          _PauseIntent: CallbackAction(onInvoke: (_) async {
            ShortcutUtils.handleShortcut(context, ref, 'stop');
            return null;
          }),
          _NextIntent: CallbackAction(onInvoke: (_) async {
            ShortcutUtils.handleShortcut(context, ref, 'skip');
            return null;
          }),
          _PreviousIntent: CallbackAction(onInvoke: (_) async {
            ShortcutUtils.handleShortcut(context, ref, 'previous');
            return null;
          }),
          _CycleRepeatModeIntent: CallbackAction(onInvoke: (_) async {
            ShortcutUtils.handleShortcut(context, ref, 'cycle_repeat_mode');
            return null;
          }),
          _VolumeUpIntent:CallbackAction(onInvoke: (_) async {
            ShortcutUtils.handleShortcut(context, ref, 'volume_up');
            return null;
          }),
          _VolumeDownIntent:CallbackAction(onInvoke: (_) async {
            ShortcutUtils.handleShortcut(context, ref, 'volume_down');
            return null;
          }),
          _ExitAppIntent: CallbackAction(onInvoke: (_) async {
            ShortcutUtils.handleShortcut(context, ref, 'quit');
            return null;
          }),
          _NewPlaylistIntent:CallbackAction(onInvoke: (_) async {
            ShortcutUtils.handleShortcut(context, ref, 'new_playlist');
            return null;
          }),
        },
        child: child,
      ),
    );
  }
}

class _ExitAppIntent extends Intent {}

class _PopPageIntent extends Intent {}

class _PasteIntent extends Intent {}

class _CloseWindowIntent extends Intent {}

class _PauseIntent extends Intent{}

class _NextIntent extends Intent{}

class _PreviousIntent extends Intent{}

class _CycleRepeatModeIntent extends Intent{}

class _VolumeUpIntent extends Intent{}

class _VolumeDownIntent extends Intent{}

class _NewPlaylistIntent extends Intent{}



bool _ignoreMetaLast = false;
bool _isFakeMetaKey() {
  // We can detect the "fake" meta key by checking if the last key was a meta key
  // because the real meta key should be the first key pressed.
  if (_ignoreMetaLast) {
    final lastKey = HardwareKeyboard.instance.logicalKeysPressed.lastOrNull;
    if (lastKey?.isMeta ?? false) {
      return true;
    }
  } else {
    final firstKey = HardwareKeyboard.instance.logicalKeysPressed.firstOrNull;

    if (firstKey?.isMeta ?? false) {
      _ignoreMetaLast = true;
    }
  }

  return false;
}

extension on LogicalKeyboardKey {
  bool get isMeta => this == LogicalKeyboardKey.meta || this == LogicalKeyboardKey.metaLeft || this == LogicalKeyboardKey.metaRight;
}
