// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collect_playlist.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CollectPlaylistAdapter extends TypeAdapter<CollectPlaylist> {
  @override
  final int typeId = 1;

  @override
  CollectPlaylist read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CollectPlaylist(
      id: fields[0] as String,
      title: fields[1] as String,
      cover: fields[2] as String?,
      isTop: fields[3] as bool,
      songIds: (fields[4] as List).cast<String>(),
      isDefault: fields[5] as bool,
      createTime: (fields[6] as num).toInt(),
      collectCurrentType: fields[7] as CollectTypeEnum,
      collectSourceType: fields[8] as CollectTypeEnum,
      upper: fields[9] as Upper?,
      onlineId: fields[10] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CollectPlaylist obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.cover)
      ..writeByte(3)
      ..write(obj.isTop)
      ..writeByte(4)
      ..write(obj.songIds)
      ..writeByte(5)
      ..write(obj.isDefault)
      ..writeByte(6)
      ..write(obj.createTime)
      ..writeByte(7)
      ..write(obj.collectCurrentType)
      ..writeByte(8)
      ..write(obj.collectSourceType)
      ..writeByte(9)
      ..write(obj.upper)
      ..writeByte(10)
      ..write(obj.onlineId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CollectPlaylistAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectPlaylistImpl _$$CollectPlaylistImplFromJson(Map json) =>
    $checkedCreate(
      r'_$CollectPlaylistImpl',
      json,
      ($checkedConvert) {
        final val = _$CollectPlaylistImpl(
          id: $checkedConvert('id', (v) => v as String? ?? ''),
          title: $checkedConvert('title', (v) => v as String? ?? ''),
          cover: $checkedConvert('cover', (v) => v as String?),
          isTop: $checkedConvert('isTop', (v) => v as bool? ?? false),
          songIds: $checkedConvert(
              'songIds',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
          songs: $checkedConvert(
              'songs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      AudioInfo.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          isDefault: $checkedConvert('isDefault', (v) => v as bool? ?? false),
          createTime:
              $checkedConvert('createTime', (v) => (v as num?)?.toInt() ?? 0),
          collectCurrentType: $checkedConvert('collectCurrentType',
              (v) => $enumDecode(_$CollectTypeEnumEnumMap, v)),
          collectSourceType: $checkedConvert('collectSourceType',
              (v) => $enumDecode(_$CollectTypeEnumEnumMap, v)),
          upper: $checkedConvert(
              'upper',
              (v) => v == null
                  ? null
                  : Upper.fromJson(Map<String, dynamic>.from(v as Map))),
          onlineId: $checkedConvert('onlineId', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CollectPlaylistImplToJson(
        _$CollectPlaylistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'cover': instance.cover,
      'isTop': instance.isTop,
      'songIds': instance.songIds,
      'songs': instance.songs,
      'isDefault': instance.isDefault,
      'createTime': instance.createTime,
      'collectCurrentType':
          _$CollectTypeEnumEnumMap[instance.collectCurrentType]!,
      'collectSourceType':
          _$CollectTypeEnumEnumMap[instance.collectSourceType]!,
      'upper': instance.upper,
      'onlineId': instance.onlineId,
    };

const _$CollectTypeEnumEnumMap = {
  CollectTypeEnum.biliCollect: 'biliCollect',
  CollectTypeEnum.biliSeason: 'biliSeason',
  CollectTypeEnum.biliSeries: 'biliSeries',
  CollectTypeEnum.biliUpper: 'biliUpper',
  CollectTypeEnum.playlist: 'playlist',
  CollectTypeEnum.local: 'local',
  CollectTypeEnum.localAudios: 'localAudios',
};
