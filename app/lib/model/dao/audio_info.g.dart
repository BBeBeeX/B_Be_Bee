// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AudioInfoImplAdapter extends TypeAdapter<_$AudioInfoImpl> {
  @override
  final int typeId = 9;

  @override
  _$AudioInfoImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$AudioInfoImpl(
      id: fields[0] as String,
      title: fields[1] == null ? '' : fields[1] as String,
      duration: fields[2] == null ? 0 : (fields[2] as num).toInt(),
      music_title: fields[3] as String?,
      music_singer: fields[4] as String?,
      music_album: fields[5] as String?,
      audioCurrentType: fields[6] == null
          ? AudioSourceTypeEnum.bili
          : fields[6] as AudioSourceTypeEnum,
      audioSourceType: fields[7] == null
          ? AudioSourceTypeEnum.bili
          : fields[7] as AudioSourceTypeEnum,
      upper: fields[8] == null ? const Upper() : fields[8] as Upper,
      lyrics: fields[9] as String?,
      localPath: fields[10] == null ? '' : fields[10] as String,
      coverLocalUrl: fields[11] == null ? '' : fields[11] as String,
      onlineId: fields[12] == null ? '' : fields[12] as String,
      biliCid: fields[13] == null ? 0 : (fields[13] as num).toInt(),
      coverWebUrl: fields[14] == null ? '' : fields[14] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$AudioInfoImpl obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.duration)
      ..writeByte(3)
      ..write(obj.music_title)
      ..writeByte(4)
      ..write(obj.music_singer)
      ..writeByte(5)
      ..write(obj.music_album)
      ..writeByte(6)
      ..write(obj.audioCurrentType)
      ..writeByte(7)
      ..write(obj.audioSourceType)
      ..writeByte(8)
      ..write(obj.upper)
      ..writeByte(9)
      ..write(obj.lyrics)
      ..writeByte(10)
      ..write(obj.localPath)
      ..writeByte(11)
      ..write(obj.coverLocalUrl)
      ..writeByte(12)
      ..write(obj.onlineId)
      ..writeByte(13)
      ..write(obj.biliCid)
      ..writeByte(14)
      ..write(obj.coverWebUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AudioInfoImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioInfoImpl _$$AudioInfoImplFromJson(Map json) => $checkedCreate(
      r'_$AudioInfoImpl',
      json,
      ($checkedConvert) {
        final val = _$AudioInfoImpl(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String? ?? ''),
          duration:
              $checkedConvert('duration', (v) => (v as num?)?.toInt() ?? 0),
          music_title: $checkedConvert('music_title', (v) => v as String?),
          music_singer: $checkedConvert('music_singer', (v) => v as String?),
          music_album: $checkedConvert('music_album', (v) => v as String?),
          audioCurrentType: $checkedConvert(
              'audioCurrentType',
              (v) =>
                  $enumDecodeNullable(_$AudioSourceTypeEnumEnumMap, v) ??
                  AudioSourceTypeEnum.bili),
          audioSourceType: $checkedConvert(
              'audioSourceType',
              (v) =>
                  $enumDecodeNullable(_$AudioSourceTypeEnumEnumMap, v) ??
                  AudioSourceTypeEnum.bili),
          upper: $checkedConvert(
              'upper',
              (v) => v == null
                  ? const Upper()
                  : Upper.fromJson(Map<String, dynamic>.from(v as Map))),
          lyrics: $checkedConvert('lyrics', (v) => v as String?),
          localPath: $checkedConvert('localPath', (v) => v as String? ?? ''),
          coverLocalUrl:
              $checkedConvert('coverLocalUrl', (v) => v as String? ?? ''),
          onlineId: $checkedConvert('onlineId', (v) => v as String? ?? ''),
          biliCid: $checkedConvert('biliCid', (v) => (v as num?)?.toInt() ?? 0),
          coverWebUrl:
              $checkedConvert('coverWebUrl', (v) => v as String? ?? ''),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AudioInfoImplToJson(_$AudioInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'duration': instance.duration,
      'music_title': instance.music_title,
      'music_singer': instance.music_singer,
      'music_album': instance.music_album,
      'audioCurrentType':
          _$AudioSourceTypeEnumEnumMap[instance.audioCurrentType]!,
      'audioSourceType':
          _$AudioSourceTypeEnumEnumMap[instance.audioSourceType]!,
      'upper': instance.upper,
      'lyrics': instance.lyrics,
      'localPath': instance.localPath,
      'coverLocalUrl': instance.coverLocalUrl,
      'onlineId': instance.onlineId,
      'biliCid': instance.biliCid,
      'coverWebUrl': instance.coverWebUrl,
    };

const _$AudioSourceTypeEnumEnumMap = {
  AudioSourceTypeEnum.local: 'local',
  AudioSourceTypeEnum.bili: 'bili',
  AudioSourceTypeEnum.bili_music: 'bili_music',
};
