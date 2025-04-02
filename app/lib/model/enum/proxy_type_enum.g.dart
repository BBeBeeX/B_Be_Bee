// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proxy_type_enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProxyTypeEnumAdapter extends TypeAdapter<ProxyTypeEnum> {
  @override
  final int typeId = 13;

  @override
  ProxyTypeEnum read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ProxyTypeEnum.none;
      case 1:
        return ProxyTypeEnum.HTTP;
      case 2:
        return ProxyTypeEnum.SOCKS4;
      case 3:
        return ProxyTypeEnum.SOCKS5;
      default:
        return ProxyTypeEnum.none;
    }
  }

  @override
  void write(BinaryWriter writer, ProxyTypeEnum obj) {
    switch (obj) {
      case ProxyTypeEnum.none:
        writer.writeByte(0);
      case ProxyTypeEnum.HTTP:
        writer.writeByte(1);
      case ProxyTypeEnum.SOCKS4:
        writer.writeByte(2);
      case ProxyTypeEnum.SOCKS5:
        writer.writeByte(3);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProxyTypeEnumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
