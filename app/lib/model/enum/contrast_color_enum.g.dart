// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contrast_color_enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ContrastColorEnumAdapter extends TypeAdapter<ContrastColorEnum> {
  @override
  final int typeId = 12;

  @override
  ContrastColorEnum read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ContrastColorEnum.blackAndWhite;
      case 1:
        return ContrastColorEnum.opposite;
      default:
        return ContrastColorEnum.blackAndWhite;
    }
  }

  @override
  void write(BinaryWriter writer, ContrastColorEnum obj) {
    switch (obj) {
      case ContrastColorEnum.blackAndWhite:
        writer.writeByte(0);
      case ContrastColorEnum.opposite:
        writer.writeByte(1);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContrastColorEnumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
