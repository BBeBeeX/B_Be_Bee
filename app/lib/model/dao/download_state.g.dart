// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_state.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DownloadStateAdapter extends TypeAdapter<DownloadState> {
  @override
  final int typeId = 3;

  @override
  DownloadState read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DownloadState(
      tasks: (fields[0] as Map).cast<String, DownloadTask>(),
      downloadQueue: (fields[1] as List).cast<String>(),
      isPaused: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, DownloadState obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.tasks)
      ..writeByte(1)
      ..write(obj.downloadQueue)
      ..writeByte(2)
      ..write(obj.isPaused);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DownloadStateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DownloadTaskAdapter extends TypeAdapter<DownloadTask> {
  @override
  final int typeId = 4;

  @override
  DownloadTask read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DownloadTask(
      id: fields[0] as String,
      audioInfo: fields[1] as AudioInfo,
      audioItem: fields[2] as AudioPlayItem?,
      status: fields[3] as DownloadStatusEnum,
      progress: (fields[4] as num).toDouble(),
      error: fields[5] as String?,
      localPath: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, DownloadTask obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.audioInfo)
      ..writeByte(2)
      ..write(obj.audioItem)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.progress)
      ..writeByte(5)
      ..write(obj.error)
      ..writeByte(6)
      ..write(obj.localPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DownloadTaskAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DownloadStateImpl _$$DownloadStateImplFromJson(Map json) => $checkedCreate(
      r'_$DownloadStateImpl',
      json,
      ($checkedConvert) {
        final val = _$DownloadStateImpl(
          tasks: $checkedConvert(
              'tasks',
              (v) =>
                  (v as Map?)?.map(
                    (k, e) => MapEntry(
                        k as String,
                        DownloadTask.fromJson(
                            Map<String, dynamic>.from(e as Map))),
                  ) ??
                  const {}),
          downloadQueue: $checkedConvert(
              'downloadQueue',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
          isPaused: $checkedConvert('isPaused', (v) => v as bool? ?? false),
          isInit: $checkedConvert('isInit', (v) => v as bool? ?? false),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DownloadStateImplToJson(_$DownloadStateImpl instance) =>
    <String, dynamic>{
      'tasks': instance.tasks,
      'downloadQueue': instance.downloadQueue,
      'isPaused': instance.isPaused,
      'isInit': instance.isInit,
    };

_$DownloadTaskImpl _$$DownloadTaskImplFromJson(Map json) => $checkedCreate(
      r'_$DownloadTaskImpl',
      json,
      ($checkedConvert) {
        final val = _$DownloadTaskImpl(
          id: $checkedConvert('id', (v) => v as String),
          audioInfo: $checkedConvert('audioInfo',
              (v) => AudioInfo.fromJson(Map<String, dynamic>.from(v as Map))),
          audioItem: $checkedConvert(
              'audioItem',
              (v) => v == null
                  ? null
                  : AudioPlayItem.fromJson(
                      Map<String, dynamic>.from(v as Map))),
          status: $checkedConvert(
              'status', (v) => $enumDecode(_$DownloadStatusEnumEnumMap, v)),
          progress: $checkedConvert(
              'progress', (v) => (v as num?)?.toDouble() ?? 0.0),
          error: $checkedConvert('error', (v) => v as String?),
          localPath: $checkedConvert('localPath', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DownloadTaskImplToJson(_$DownloadTaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'audioInfo': instance.audioInfo,
      'audioItem': instance.audioItem,
      'status': _$DownloadStatusEnumEnumMap[instance.status]!,
      'progress': instance.progress,
      'error': instance.error,
      'localPath': instance.localPath,
    };

const _$DownloadStatusEnumEnumMap = {
  DownloadStatusEnum.error: 'error',
  DownloadStatusEnum.canceled: 'canceled',
  DownloadStatusEnum.pending: 'pending',
  DownloadStatusEnum.init: 'init',
  DownloadStatusEnum.downloadPaused: 'downloadPaused',
  DownloadStatusEnum.downloading: 'downloading',
  DownloadStatusEnum.downloadSuccess: 'downloadSuccess',
  DownloadStatusEnum.lyricsPaused: 'lyricsPaused',
  DownloadStatusEnum.lyrics: 'lyrics',
  DownloadStatusEnum.lyricsSuccess: 'lyricsSuccess',
  DownloadStatusEnum.imagePaused: 'imagePaused',
  DownloadStatusEnum.image: 'image',
  DownloadStatusEnum.imageSuccess: 'imageSuccess',
  DownloadStatusEnum.convertPaused: 'convertPaused',
  DownloadStatusEnum.converting: 'converting',
  DownloadStatusEnum.convertSuccess: 'convertSuccess',
  DownloadStatusEnum.completedPaused: 'completedPaused',
  DownloadStatusEnum.completed: 'completed',
};
