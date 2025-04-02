// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DownloadState _$DownloadStateFromJson(Map<String, dynamic> json) {
  return _DownloadState.fromJson(json);
}

/// @nodoc
mixin _$DownloadState {
  @HiveField(0)
  Map<String, DownloadTask> get tasks => throw _privateConstructorUsedError;
  @HiveField(1)
  List<String> get downloadQueue => throw _privateConstructorUsedError;
  @HiveField(2)
  bool get isPaused => throw _privateConstructorUsedError;
  bool get isInit => throw _privateConstructorUsedError;

  /// Serializes this DownloadState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadStateCopyWith<DownloadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadStateCopyWith<$Res> {
  factory $DownloadStateCopyWith(
          DownloadState value, $Res Function(DownloadState) then) =
      _$DownloadStateCopyWithImpl<$Res, DownloadState>;
  @useResult
  $Res call(
      {@HiveField(0) Map<String, DownloadTask> tasks,
      @HiveField(1) List<String> downloadQueue,
      @HiveField(2) bool isPaused,
      bool isInit});
}

/// @nodoc
class _$DownloadStateCopyWithImpl<$Res, $Val extends DownloadState>
    implements $DownloadStateCopyWith<$Res> {
  _$DownloadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? downloadQueue = null,
    Object? isPaused = null,
    Object? isInit = null,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as Map<String, DownloadTask>,
      downloadQueue: null == downloadQueue
          ? _value.downloadQueue
          : downloadQueue // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isPaused: null == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
      isInit: null == isInit
          ? _value.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadStateImplCopyWith<$Res>
    implements $DownloadStateCopyWith<$Res> {
  factory _$$DownloadStateImplCopyWith(
          _$DownloadStateImpl value, $Res Function(_$DownloadStateImpl) then) =
      __$$DownloadStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) Map<String, DownloadTask> tasks,
      @HiveField(1) List<String> downloadQueue,
      @HiveField(2) bool isPaused,
      bool isInit});
}

/// @nodoc
class __$$DownloadStateImplCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$DownloadStateImpl>
    implements _$$DownloadStateImplCopyWith<$Res> {
  __$$DownloadStateImplCopyWithImpl(
      _$DownloadStateImpl _value, $Res Function(_$DownloadStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? downloadQueue = null,
    Object? isPaused = null,
    Object? isInit = null,
  }) {
    return _then(_$DownloadStateImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as Map<String, DownloadTask>,
      downloadQueue: null == downloadQueue
          ? _value._downloadQueue
          : downloadQueue // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isPaused: null == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
      isInit: null == isInit
          ? _value.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadStateImpl implements _DownloadState {
  const _$DownloadStateImpl(
      {@HiveField(0) final Map<String, DownloadTask> tasks = const {},
      @HiveField(1) final List<String> downloadQueue = const [],
      @HiveField(2) this.isPaused = false,
      this.isInit = false})
      : _tasks = tasks,
        _downloadQueue = downloadQueue;

  factory _$DownloadStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadStateImplFromJson(json);

  final Map<String, DownloadTask> _tasks;
  @override
  @JsonKey()
  @HiveField(0)
  Map<String, DownloadTask> get tasks {
    if (_tasks is EqualUnmodifiableMapView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tasks);
  }

  final List<String> _downloadQueue;
  @override
  @JsonKey()
  @HiveField(1)
  List<String> get downloadQueue {
    if (_downloadQueue is EqualUnmodifiableListView) return _downloadQueue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloadQueue);
  }

  @override
  @JsonKey()
  @HiveField(2)
  final bool isPaused;
  @override
  @JsonKey()
  final bool isInit;

  @override
  String toString() {
    return 'DownloadState(tasks: $tasks, downloadQueue: $downloadQueue, isPaused: $isPaused, isInit: $isInit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadStateImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality()
                .equals(other._downloadQueue, _downloadQueue) &&
            (identical(other.isPaused, isPaused) ||
                other.isPaused == isPaused) &&
            (identical(other.isInit, isInit) || other.isInit == isInit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(_downloadQueue),
      isPaused,
      isInit);

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadStateImplCopyWith<_$DownloadStateImpl> get copyWith =>
      __$$DownloadStateImplCopyWithImpl<_$DownloadStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadStateImplToJson(
      this,
    );
  }
}

abstract class _DownloadState implements DownloadState {
  const factory _DownloadState(
      {@HiveField(0) final Map<String, DownloadTask> tasks,
      @HiveField(1) final List<String> downloadQueue,
      @HiveField(2) final bool isPaused,
      final bool isInit}) = _$DownloadStateImpl;

  factory _DownloadState.fromJson(Map<String, dynamic> json) =
      _$DownloadStateImpl.fromJson;

  @override
  @HiveField(0)
  Map<String, DownloadTask> get tasks;
  @override
  @HiveField(1)
  List<String> get downloadQueue;
  @override
  @HiveField(2)
  bool get isPaused;
  @override
  bool get isInit;

  /// Create a copy of DownloadState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadStateImplCopyWith<_$DownloadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DownloadTask _$DownloadTaskFromJson(Map<String, dynamic> json) {
  return _DownloadTask.fromJson(json);
}

/// @nodoc
mixin _$DownloadTask {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  AudioInfo get audioInfo => throw _privateConstructorUsedError;
  @HiveField(2)
  AudioPlayItem? get audioItem => throw _privateConstructorUsedError;
  @HiveField(3)
  DownloadStatusEnum get status => throw _privateConstructorUsedError;
  @HiveField(4)
  double get progress => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get error => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get localPath => throw _privateConstructorUsedError;

  /// Serializes this DownloadTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DownloadTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadTaskCopyWith<DownloadTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadTaskCopyWith<$Res> {
  factory $DownloadTaskCopyWith(
          DownloadTask value, $Res Function(DownloadTask) then) =
      _$DownloadTaskCopyWithImpl<$Res, DownloadTask>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) AudioInfo audioInfo,
      @HiveField(2) AudioPlayItem? audioItem,
      @HiveField(3) DownloadStatusEnum status,
      @HiveField(4) double progress,
      @HiveField(5) String? error,
      @HiveField(6) String? localPath});

  $AudioInfoCopyWith<$Res> get audioInfo;
  $AudioPlayItemCopyWith<$Res>? get audioItem;
}

/// @nodoc
class _$DownloadTaskCopyWithImpl<$Res, $Val extends DownloadTask>
    implements $DownloadTaskCopyWith<$Res> {
  _$DownloadTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? audioInfo = null,
    Object? audioItem = freezed,
    Object? status = null,
    Object? progress = null,
    Object? error = freezed,
    Object? localPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      audioInfo: null == audioInfo
          ? _value.audioInfo
          : audioInfo // ignore: cast_nullable_to_non_nullable
              as AudioInfo,
      audioItem: freezed == audioItem
          ? _value.audioItem
          : audioItem // ignore: cast_nullable_to_non_nullable
              as AudioPlayItem?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DownloadStatusEnum,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      localPath: freezed == localPath
          ? _value.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of DownloadTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AudioInfoCopyWith<$Res> get audioInfo {
    return $AudioInfoCopyWith<$Res>(_value.audioInfo, (value) {
      return _then(_value.copyWith(audioInfo: value) as $Val);
    });
  }

  /// Create a copy of DownloadTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AudioPlayItemCopyWith<$Res>? get audioItem {
    if (_value.audioItem == null) {
      return null;
    }

    return $AudioPlayItemCopyWith<$Res>(_value.audioItem!, (value) {
      return _then(_value.copyWith(audioItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DownloadTaskImplCopyWith<$Res>
    implements $DownloadTaskCopyWith<$Res> {
  factory _$$DownloadTaskImplCopyWith(
          _$DownloadTaskImpl value, $Res Function(_$DownloadTaskImpl) then) =
      __$$DownloadTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) AudioInfo audioInfo,
      @HiveField(2) AudioPlayItem? audioItem,
      @HiveField(3) DownloadStatusEnum status,
      @HiveField(4) double progress,
      @HiveField(5) String? error,
      @HiveField(6) String? localPath});

  @override
  $AudioInfoCopyWith<$Res> get audioInfo;
  @override
  $AudioPlayItemCopyWith<$Res>? get audioItem;
}

/// @nodoc
class __$$DownloadTaskImplCopyWithImpl<$Res>
    extends _$DownloadTaskCopyWithImpl<$Res, _$DownloadTaskImpl>
    implements _$$DownloadTaskImplCopyWith<$Res> {
  __$$DownloadTaskImplCopyWithImpl(
      _$DownloadTaskImpl _value, $Res Function(_$DownloadTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? audioInfo = null,
    Object? audioItem = freezed,
    Object? status = null,
    Object? progress = null,
    Object? error = freezed,
    Object? localPath = freezed,
  }) {
    return _then(_$DownloadTaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      audioInfo: null == audioInfo
          ? _value.audioInfo
          : audioInfo // ignore: cast_nullable_to_non_nullable
              as AudioInfo,
      audioItem: freezed == audioItem
          ? _value.audioItem
          : audioItem // ignore: cast_nullable_to_non_nullable
              as AudioPlayItem?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DownloadStatusEnum,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      localPath: freezed == localPath
          ? _value.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadTaskImpl implements _DownloadTask {
  const _$DownloadTaskImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.audioInfo,
      @HiveField(2) this.audioItem,
      @HiveField(3) required this.status,
      @HiveField(4) this.progress = 0.0,
      @HiveField(5) this.error,
      @HiveField(6) this.localPath});

  factory _$DownloadTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadTaskImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final AudioInfo audioInfo;
  @override
  @HiveField(2)
  final AudioPlayItem? audioItem;
  @override
  @HiveField(3)
  final DownloadStatusEnum status;
  @override
  @JsonKey()
  @HiveField(4)
  final double progress;
  @override
  @HiveField(5)
  final String? error;
  @override
  @HiveField(6)
  final String? localPath;

  @override
  String toString() {
    return 'DownloadTask(id: $id, audioInfo: $audioInfo, audioItem: $audioItem, status: $status, progress: $progress, error: $error, localPath: $localPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.audioInfo, audioInfo) ||
                other.audioInfo == audioInfo) &&
            (identical(other.audioItem, audioItem) ||
                other.audioItem == audioItem) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.localPath, localPath) ||
                other.localPath == localPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, audioInfo, audioItem, status,
      progress, error, localPath);

  /// Create a copy of DownloadTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadTaskImplCopyWith<_$DownloadTaskImpl> get copyWith =>
      __$$DownloadTaskImplCopyWithImpl<_$DownloadTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadTaskImplToJson(
      this,
    );
  }
}

abstract class _DownloadTask implements DownloadTask {
  const factory _DownloadTask(
      {@HiveField(0) required final String id,
      @HiveField(1) required final AudioInfo audioInfo,
      @HiveField(2) final AudioPlayItem? audioItem,
      @HiveField(3) required final DownloadStatusEnum status,
      @HiveField(4) final double progress,
      @HiveField(5) final String? error,
      @HiveField(6) final String? localPath}) = _$DownloadTaskImpl;

  factory _DownloadTask.fromJson(Map<String, dynamic> json) =
      _$DownloadTaskImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  AudioInfo get audioInfo;
  @override
  @HiveField(2)
  AudioPlayItem? get audioItem;
  @override
  @HiveField(3)
  DownloadStatusEnum get status;
  @override
  @HiveField(4)
  double get progress;
  @override
  @HiveField(5)
  String? get error;
  @override
  @HiveField(6)
  String? get localPath;

  /// Create a copy of DownloadTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadTaskImplCopyWith<_$DownloadTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
