// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repeat_mode_enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RepeatModeEnumAdapter extends TypeAdapter<RepeatModeEnum> {
  @override
  final int typeId = 7;

  @override
  RepeatModeEnum read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return RepeatModeEnum.none;
      case 1:
        return RepeatModeEnum.all;
      case 2:
        return RepeatModeEnum.one;
      case 3:
        return RepeatModeEnum.random;
      default:
        return RepeatModeEnum.none;
    }
  }

  @override
  void write(BinaryWriter writer, RepeatModeEnum obj) {
    switch (obj) {
      case RepeatModeEnum.none:
        writer.writeByte(0);
      case RepeatModeEnum.all:
        writer.writeByte(1);
      case RepeatModeEnum.one:
        writer.writeByte(2);
      case RepeatModeEnum.random:
        writer.writeByte(3);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RepeatModeEnumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
