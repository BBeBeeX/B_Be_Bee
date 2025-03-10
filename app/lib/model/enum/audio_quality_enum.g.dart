// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_quality_enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AudioQualityAdapter extends TypeAdapter<AudioQuality> {
  @override
  final int typeId = 10;

  @override
  AudioQuality read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AudioQuality.unknown;
      case 1:
        return AudioQuality.low;
      case 2:
        return AudioQuality.standard;
      case 3:
        return AudioQuality.high;
      case 4:
        return AudioQuality.dolby;
      case 5:
        return AudioQuality.hiRes;
      default:
        return AudioQuality.unknown;
    }
  }

  @override
  void write(BinaryWriter writer, AudioQuality obj) {
    switch (obj) {
      case AudioQuality.unknown:
        writer.writeByte(0);
      case AudioQuality.low:
        writer.writeByte(1);
      case AudioQuality.standard:
        writer.writeByte(2);
      case AudioQuality.high:
        writer.writeByte(3);
      case AudioQuality.dolby:
        writer.writeByte(4);
      case AudioQuality.hiRes:
        writer.writeByte(5);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AudioQualityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
