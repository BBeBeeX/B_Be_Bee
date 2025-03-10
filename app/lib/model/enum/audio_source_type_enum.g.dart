// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_source_type_enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AudioSourceTypeEnumAdapter extends TypeAdapter<AudioSourceTypeEnum> {
  @override
  final int typeId = 6;

  @override
  AudioSourceTypeEnum read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AudioSourceTypeEnum.local;
      case 1:
        return AudioSourceTypeEnum.bili;
      case 2:
        return AudioSourceTypeEnum.bili_music;
      default:
        return AudioSourceTypeEnum.local;
    }
  }

  @override
  void write(BinaryWriter writer, AudioSourceTypeEnum obj) {
    switch (obj) {
      case AudioSourceTypeEnum.local:
        writer.writeByte(0);
      case AudioSourceTypeEnum.bili:
        writer.writeByte(1);
      case AudioSourceTypeEnum.bili_music:
        writer.writeByte(2);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AudioSourceTypeEnumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
