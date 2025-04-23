import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:audio_session/audio_session.dart';
import 'package:b_be_bee_app/common/api_constants.dart';
import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/controller/settings_controller.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dto/player/player_audio_data.dart';
import 'package:b_be_bee_app/model/dto/player/player_position_data.dart';
import 'package:b_be_bee_app/model/enum/audio_source_type_enum.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/util/native/permission_helper.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_media_kit/just_audio_media_kit.dart';
import 'package:rxdart/rxdart.dart';

class CustomAudioHandler extends BaseAudioHandler {
  static bool enableAnimations = true;
  static bool enableMessageBar = true;
  static int fadeInOutTime = 0;
  static bool hasFadeInOut = true;
  static double currentVolume = 1;

  CustomAudioHandler._privateConstructor() {
    _setupEventSubscriptions();
    updatePlaybackState();
    _initialize();
  }

  static final _equalizer =
      checkPlatform([TargetPlatform.android]) ? AndroidEqualizer() : null;
  static final _loudnessEnhancer = checkPlatform([TargetPlatform.android])
      ? AndroidLoudnessEnhancer()
      : null;
  static final AudioPlayer _player = checkPlatform([TargetPlatform.android])
      ? AudioPlayer(
          audioPipeline: AudioPipeline(
            androidAudioEffects: [
              _loudnessEnhancer!,
              _equalizer!,
            ],
          ),
        )
      : AudioPlayer();
  static AudioPlayer get player => _player;

  static setRef(WidgetRef ref) {
    enableMessageBar = ref.watch(settingsProvider).enableMessageBar;
    enableAnimations = ref.watch(settingsProvider).enableAnimations;
    fadeInOutTime = ref.watch(settingsProvider).fadeInOutTime;
    currentVolume = ref.watch(playlistControllerProvider).volume;
    final settingValue = ref.read(settingsProvider);

    if (_loudnessEnhancer != null) {
      _loudnessEnhancer!.setEnabled(settingValue.isEnableLoudnessEnhancer);
      _loudnessEnhancer!.setTargetGain(settingValue.loudnessEnhancerValue);

      ref.listen<bool>(
        settingsProvider.select((state) => state.isEnableLoudnessEnhancer),
        (previous, next) {
          Future.microtask(() async {
            container
                .read(commonLoggerProvider.notifier)
                .addLog('isEnableLoudnessEnhancer change: $previous -> $next');
          });
          _loudnessEnhancer!.setEnabled(settingValue.isEnableLoudnessEnhancer);
        },
      );

      ref.listen<double>(
        settingsProvider.select((state) => state.loudnessEnhancerValue),
        (previous, next) {
          Future.microtask(() async {
            container
                .read(commonLoggerProvider.notifier)
                .addLog('loudnessEnhancerValue change: $previous -> $next');
          });
          _loudnessEnhancer!.setTargetGain(settingValue.loudnessEnhancerValue);
        },
      );
    }

    if (_equalizer != null) {
      _equalizer!.setEnabled(settingValue.isEnableEqualizer);
      initEqualizer(settingValue.equalizerValue);

      ref.listen<bool>(
        settingsProvider.select((state) => state.isEnableEqualizer),
        (previous, next) {
          Future.microtask(() async {
            container
                .read(commonLoggerProvider.notifier)
                .addLog('isEnableEqualizer change: $previous -> $next');
          });
          _equalizer!.setEnabled(settingValue.isEnableEqualizer);
        },
      );

      ref.listen<List<double>>(
        settingsProvider.select((state) => state.equalizerValue),
        (previous, next) {
          Future.microtask(() async {
            container
                .read(commonLoggerProvider.notifier)
                .addLog('equalizerValue change: $previous -> $next');
          });
          initEqualizer(settingValue.equalizerValue);
        },
      );
    }
  }

  static Future<void> initEqualizer(List<double> list) async {
    final bands = await _equalizer!.parameters;

    if (list.length != bands.bands.length) {
      Future.microtask(() async {
        container.read(commonLoggerProvider.notifier).addLog(
            'settings equlizer value(${list.length}) is nat match equalizer bands length(${bands.bands.length})');
      });
      return;
    }

    for (int i = 0; i < bands.bands.length; i++) {
      final band = bands.bands[i];

      final gain = list[i].clamp(bands.minDecibels, bands.maxDecibels);
      band.setGain(gain);
    }
  }

  static CustomAudioHandler? _instance;

  static CustomAudioHandler initialize() {
    JustAudioMediaKit.ensureInitialized();

    if (_instance == null) {
      _instance = CustomAudioHandler._privateConstructor();
    } else {
      throw Exception('CustomAudioHandler has already been initialized.');
    }

    return _instance!;
  }

  static CustomAudioHandler get instance {
    if (_instance == null) {
      throw Exception(
          'CustomAudioHandler not initialized. Please initialize it first.');
    }
    return _instance!;
  }

  late StreamSubscription<PlaybackEvent> _playbackEventSubscription;
  late StreamSubscription<Duration?> _durationSubscription;
  late StreamSubscription<int?> _currentIndexSubscription;
  late StreamSubscription<SequenceState?> _sequenceStateSubscription;

  Stream<PlayerPositionData> get positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PlayerPositionData>(
        _player.positionStream,
        _player.bufferedPositionStream,
        _player.durationStream,
        (position, bufferedPosition, duration) => PlayerPositionData(
            position, bufferedPosition, duration ?? Duration.zero),
      );

  Stream<String>? get qualityDataStream => _instance?.mediaItem
      .map((item) => item!.extras?['quality'].toString() ?? '')
      .distinct();

  Stream<PlayerAudioData> get audioDataStream =>
      Rx.combineLatest2<bool, String, PlayerAudioData>(
        _player.playingStream,
        _instance!.mediaItem
            .map((item) => item!.extras?['id'].toString() ?? '')
            .distinct(),
        (isPlaying, audioId) => PlayerAudioData(isPlaying, audioId),
      );

  final processingStateMap = {
    ProcessingState.idle: AudioProcessingState.idle,
    ProcessingState.loading: AudioProcessingState.loading,
    ProcessingState.buffering: AudioProcessingState.buffering,
    ProcessingState.ready: AudioProcessingState.ready,
    ProcessingState.completed: AudioProcessingState.completed,
  };

  Future<void> _handlePlaybackEvent(PlaybackEvent event) async {
    try {
      if (event.processingState == ProcessingState.completed &&
          _player.playing) {
        await skipToNext();
      }
      updatePlaybackState();
    } catch (e, stackTrace) {
      await Future.microtask(() {
        container
            .read(commonLoggerProvider.notifier)
            .addLog('Error handling playback event: $e\n$stackTrace');
      });
    }
  }

  void _handleDurationChange(Duration? duration) {
    try {
      final index = _player.currentIndex;
      if (index != null && queue.value.isNotEmpty) {
        final newQueue = List<MediaItem>.from(queue.value);
        final oldMediaItem = newQueue[index];
        final newMediaItem = oldMediaItem.copyWith(duration: duration);
        newQueue[index] = newMediaItem;
        queue.add(newQueue);
        mediaItem.add(newMediaItem);
      }
    } catch (e, stackTrace) {
      Future.microtask(() {
        container
            .read(commonLoggerProvider.notifier)
            .addLog('Error handling duration change: $e\n$stackTrace');
      });
    }
  }

  void _handleCurrentSongIndexChanged(int? index) {
    try {
      if (index != null && queue.value.isNotEmpty) {
        final playlist = queue.value;
        mediaItem.add(playlist[index]);
      }
    } catch (e, stackTrace) {
      Future.microtask(() {
        container
            .read(commonLoggerProvider.notifier)
            .addLog('Error handling playback event: $e\n$stackTrace');
      });
    }
  }

  void _handleRemainingTime(Duration? position) {
    if (!hasFadeInOut) {
      final duration = _player.duration;
      if (duration != null) {
        final remainingTime = duration.inSeconds - position!.inSeconds;

        if (remainingTime <= fadeInOutTime && remainingTime > 0) {
          fadeOut(Duration(seconds: fadeInOutTime));
          hasFadeInOut = true;
        }
      }
    }
  }

  void _setupEventSubscriptions() {
    _playbackEventSubscription =
        _player.playbackEventStream.listen(_handlePlaybackEvent);
    _durationSubscription =
        _player.durationStream.listen(_handleDurationChange);
    _currentIndexSubscription =
        _player.currentIndexStream.listen(_handleCurrentSongIndexChanged);

    _player.positionStream.listen(_handleRemainingTime);
  }

  void updatePlaybackState({bool isLoading = false}) {
    playbackState.add(
      playbackState.value.copyWith(
        controls: [
          MediaControl.skipToPrevious,
          if (_player.playing) MediaControl.pause else MediaControl.play,
          MediaControl.skipToNext,
        ],
        systemActions: const {
          MediaAction.seek,
        },
        androidCompactActionIndices: const [0, 1, 2],
        processingState: isLoading
            ? AudioProcessingState.loading
            : processingStateMap[_player.processingState]!,
        playing: _player.playing,
        updatePosition: _player.position,
        bufferedPosition: _player.bufferedPosition,
        speed: _player.speed,
        queueIndex: _player.currentIndex ?? 0,
      ),
    );
  }

  Future<void> _initialize() async {
    final session = await AudioSession.instance;
    try {
      await session.configure(const AudioSessionConfiguration.music());
      session.interruptionEventStream.listen((event) async {
        if (event.begin) {
          switch (event.type) {
            case AudioInterruptionType.duck:
              _player.setVolume(currentVolume / 2);
              break;
            case AudioInterruptionType.pause:
            case AudioInterruptionType.unknown:
              _player.pause();
              break;
          }
        } else {
          switch (event.type) {
            case AudioInterruptionType.duck:
              _player.setVolume(currentVolume);
              break;
            case AudioInterruptionType.pause:
              _player.play();
              break;
            case AudioInterruptionType.unknown:
              break;
          }
        }
      });
    } catch (e, stackTrace) {
      await Future.microtask(() {
        container
            .read(commonLoggerProvider.notifier)
            .addLog('Error initializing audio session: $e\n$stackTrace');
      });
    }
  }

  @override
  Future<void> onTaskRemoved() async {
    await _player.stop().then((_) => _player.dispose());

    await _playbackEventSubscription.cancel();
    await _durationSubscription.cancel();
    await _currentIndexSubscription.cancel();
    await _sequenceStateSubscription.cancel();

    await super.onTaskRemoved();
  }

  @override
  Future<void> play() => _player.play();
  @override
  Future<void> pause() => _player.pause();
  @override
  Future<void> stop() => _player.stop();
  @override
  Future<void> seek(Duration position) => _player.seek(position);

  Future<void> togglePlay() async {
    if (_player.playing) {
      stop();
    } else {
      play();
    }
  }

  @override
  Future<void> skipToNext() async {
    customEvent.add('skipToNext');
  }

  @override
  Future<void> skipToPrevious() async {
    customEvent.add('skipToPrevious');
  }

  Future<bool> setAudio(String url, AudioInfo audioInfo,
      AudioSourceTypeEnum type, String quality, bool play) async {
    AudioSource? audioSource;

    await Future.microtask(() {
      container
          .read(commonLoggerProvider.notifier)
          .addLog('play audio: $audioInfo');
    });

    try {
      switch (type) {
        case AudioSourceTypeEnum.local:
          await getFilePermission();
          audioSource = AudioSource.uri(
            Uri.parse('file:///$url'),
          );
          break;
        case AudioSourceTypeEnum.bili_music:
        case AudioSourceTypeEnum.bili:
          audioSource = AudioSource.uri(
            Uri.parse(url),
            headers: {
              'User-Agent': Constants.defaultUserAgent,
              'Referer': ApiConstants.bilibiliBase,
            },
          );
          break;
      }
      final artUri = audioInfo.coverWebUrl.isNotEmpty
          ? Uri.parse(audioInfo.coverWebUrl)
          : Uri.parse('file://${audioInfo.coverLocalUrl}');

      if (CustomAudioHandler.enableMessageBar) {
        if (CustomAudioHandler.enableAnimations) {
          MediaItem item = MediaItem(
              id: audioInfo.id,
              title: audioInfo.title,
              artist: audioInfo.upper.name,
              duration: Duration(seconds: audioInfo.duration),
              artUri: artUri,
              extras: {
                'quality': quality,
                'id': audioInfo.id,
              });
          instance.mediaItem.add(item);
        } else {
          MediaItem item = MediaItem(
              id: audioInfo.id,
              title: audioInfo.title,
              artist: audioInfo.upper.name,
              duration: Duration(seconds: audioInfo.duration),
              extras: {
                'quality': quality,
                'id': audioInfo.id,
              });
          instance.mediaItem.add(item);
        }
      } else {}

      await _player.setAudioSource(audioSource);
      if (play) {
        await fadeIn(Duration(seconds: fadeInOutTime));
      }
      return true;
    } catch (e) {
      await Future.microtask(() {
        container
            .read(commonLoggerProvider.notifier)
            .addLog('Error loading music in player: $e\n');
      });
      return false;
    }
  }

  Future<void> fadeIn(Duration duration) async {
    _player.play();

    if (fadeInOutTime == 0) return;
    hasFadeInOut = false;

    print('fade in currentVolume: $currentVolume');

    await _player.setVolume(0);

    int steps = duration.inMilliseconds ~/ 100;
    double step = currentVolume / steps;
    int delay = (duration.inMilliseconds / steps).ceil();

    for (int i = 0; i <= steps; i++) {
      double volume = step * i;
      await _player.setVolume(volume);

      await Future.delayed(Duration(milliseconds: delay));
    }
    await _player.setVolume(currentVolume);
  }

  Future<void> fadeOut(Duration duration) async {
    if (fadeInOutTime == 0) return;

    int steps = duration.inMilliseconds ~/ 100;
    double step = currentVolume / steps;
    int delay = (duration.inMilliseconds / steps).ceil();

    for (int i = steps; i >= 0; i--) {
      double volume = step * i;
      await _player.setVolume(volume);

      await Future.delayed(Duration(milliseconds: delay));
    }
    await _player.setVolume(currentVolume);
  }
}
