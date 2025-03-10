// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_statistics.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlayStatisticsAdapter extends TypeAdapter<PlayStatistics> {
  @override
  final int typeId = 17;

  @override
  PlayStatistics read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlayStatistics(
      id: fields[0] as String,
      playTimes: (fields[1] as List).cast<DateTime>(),
      durations: (fields[2] as List).cast<Duration>(),
    );
  }

  @override
  void write(BinaryWriter writer, PlayStatistics obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.playTimes)
      ..writeByte(2)
      ..write(obj.durations);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlayStatisticsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
