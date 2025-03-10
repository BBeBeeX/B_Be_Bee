// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_top_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioToplistResponseImpl _$$AudioToplistResponseImplFromJson(Map json) =>
    $checkedCreate(
      r'_$AudioToplistResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$AudioToplistResponseImpl(
          code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
          message: $checkedConvert('message', (v) => v as String?),
          ttl: $checkedConvert('ttl', (v) => (v as num?)?.toInt()),
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : AudioToplistData.fromJson(
                      Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AudioToplistResponseImplToJson(
        _$AudioToplistResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

_$AudioToplistDataImpl _$$AudioToplistDataImplFromJson(Map json) =>
    $checkedCreate(
      r'_$AudioToplistDataImpl',
      json,
      ($checkedConvert) {
        final val = _$AudioToplistDataImpl(
          list: $checkedConvert(
              'list',
              (v) => (v as Map?)?.map(
                    (k, e) => MapEntry(
                        k as String,
                        (e as List<dynamic>)
                            .map((e) => AudioToplistPeriodItem.fromJson(
                                Map<String, dynamic>.from(e as Map)))
                            .toList()),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AudioToplistDataImplToJson(
        _$AudioToplistDataImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$AudioToplistPeriodItemImpl _$$AudioToplistPeriodItemImplFromJson(Map json) =>
    $checkedCreate(
      r'_$AudioToplistPeriodItemImpl',
      json,
      ($checkedConvert) {
        final val = _$AudioToplistPeriodItemImpl(
          id: $checkedConvert('ID', (v) => (v as num).toInt()),
          priod: $checkedConvert('priod', (v) => (v as num).toInt()),
          publishTime:
              $checkedConvert('publish_time', (v) => (v as num).toInt()),
        );
        return val;
      },
      fieldKeyMap: const {'id': 'ID', 'publishTime': 'publish_time'},
    );

Map<String, dynamic> _$$AudioToplistPeriodItemImplToJson(
        _$AudioToplistPeriodItemImpl instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'priod': instance.priod,
      'publish_time': instance.publishTime,
    };
