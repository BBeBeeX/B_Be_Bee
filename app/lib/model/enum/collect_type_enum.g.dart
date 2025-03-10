// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collect_type_enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CollectTypeEnumAdapter extends TypeAdapter<CollectTypeEnum> {
  @override
  final int typeId = 11;

  @override
  CollectTypeEnum read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return CollectTypeEnum.biliCollect;
      case 1:
        return CollectTypeEnum.biliSeason;
      case 2:
        return CollectTypeEnum.biliSeries;
      case 3:
        return CollectTypeEnum.biliUpper;
      case 4:
        return CollectTypeEnum.playlist;
      case 5:
        return CollectTypeEnum.local;
      case 6:
        return CollectTypeEnum.localAudios;
      default:
        return CollectTypeEnum.biliCollect;
    }
  }

  @override
  void write(BinaryWriter writer, CollectTypeEnum obj) {
    switch (obj) {
      case CollectTypeEnum.biliCollect:
        writer.writeByte(0);
      case CollectTypeEnum.biliSeason:
        writer.writeByte(1);
      case CollectTypeEnum.biliSeries:
        writer.writeByte(2);
      case CollectTypeEnum.biliUpper:
        writer.writeByte(3);
      case CollectTypeEnum.playlist:
        writer.writeByte(4);
      case CollectTypeEnum.local:
        writer.writeByte(5);
      case CollectTypeEnum.localAudios:
        writer.writeByte(6);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CollectTypeEnumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
