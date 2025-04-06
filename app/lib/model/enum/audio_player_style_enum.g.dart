// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_player_style_enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AudioPlayerStyleEnumAdapter extends TypeAdapter<AudioPlayerStyleEnum> {
  @override
  final int typeId = 14;

  @override
  AudioPlayerStyleEnum read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AudioPlayerStyleEnum.column1;
      case 1:
        return AudioPlayerStyleEnum.row1;
      default:
        return AudioPlayerStyleEnum.column1;
    }
  }

  @override
  void write(BinaryWriter writer, AudioPlayerStyleEnum obj) {
    switch (obj) {
      case AudioPlayerStyleEnum.column1:
        writer.writeByte(0);
      case AudioPlayerStyleEnum.row1:
        writer.writeByte(1);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AudioPlayerStyleEnumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
