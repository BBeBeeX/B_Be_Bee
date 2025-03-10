// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upper.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UpperAdapter extends TypeAdapter<Upper> {
  @override
  final int typeId = 5;

  @override
  Upper read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Upper(
      id: fields[0] as String,
      name: fields[1] as String,
      face: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Upper obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.face);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpperAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpperImpl _$$UpperImplFromJson(Map json) => $checkedCreate(
      r'_$UpperImpl',
      json,
      ($checkedConvert) {
        final val = _$UpperImpl(
          id: $checkedConvert('id', (v) => v as String? ?? ''),
          name: $checkedConvert('name', (v) => v as String? ?? ''),
          face: $checkedConvert('face', (v) => v as String? ?? ''),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UpperImplToJson(_$UpperImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'face': instance.face,
    };
