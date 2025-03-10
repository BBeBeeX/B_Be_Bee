// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_play_item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AudioPlayItemImplAdapter extends TypeAdapter<_$AudioPlayItemImpl> {
  @override
  final int typeId = 8;

  @override
  _$AudioPlayItemImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$AudioPlayItemImpl(
      urls: fields[0] == null ? const [] : (fields[0] as List).cast<String>(),
      quality:
          fields[1] == null ? AudioQuality.unknown : fields[1] as AudioQuality,
      bandWidth: fields[2] == null ? 0 : (fields[2] as num).toInt(),
      codecs: fields[3] == null ? '' : fields[3] as String,
      audioType: fields[4] == null
          ? AudioSourceTypeEnum.bili
          : fields[4] as AudioSourceTypeEnum,
    );
  }

  @override
  void write(BinaryWriter writer, _$AudioPlayItemImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.urls)
      ..writeByte(1)
      ..write(obj.quality)
      ..writeByte(2)
      ..write(obj.bandWidth)
      ..writeByte(3)
      ..write(obj.codecs)
      ..writeByte(4)
      ..write(obj.audioType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AudioPlayItemImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioPlayItemImpl _$$AudioPlayItemImplFromJson(Map json) => $checkedCreate(
      r'_$AudioPlayItemImpl',
      json,
      ($checkedConvert) {
        final val = _$AudioPlayItemImpl(
          urls: $checkedConvert(
              'urls',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
          quality: $checkedConvert(
              'quality',
              (v) => v == null
                  ? AudioQuality.unknown
                  : AudioQuality.fromJson(v as String)),
          bandWidth:
              $checkedConvert('bandWidth', (v) => (v as num?)?.toInt() ?? 0),
          codecs: $checkedConvert('codecs', (v) => v as String? ?? ''),
          audioType: $checkedConvert(
              'audioType',
              (v) =>
                  $enumDecodeNullable(_$AudioSourceTypeEnumEnumMap, v) ??
                  AudioSourceTypeEnum.bili),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AudioPlayItemImplToJson(_$AudioPlayItemImpl instance) =>
    <String, dynamic>{
      'urls': instance.urls,
      'quality': instance.quality,
      'bandWidth': instance.bandWidth,
      'codecs': instance.codecs,
      'audioType': _$AudioSourceTypeEnumEnumMap[instance.audioType]!,
    };

const _$AudioSourceTypeEnumEnumMap = {
  AudioSourceTypeEnum.local: 'local',
  AudioSourceTypeEnum.bili: 'bili',
  AudioSourceTypeEnum.bili_music: 'bili_music',
};
