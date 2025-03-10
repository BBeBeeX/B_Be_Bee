// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_play_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioPlayInfoImpl _$$AudioPlayInfoImplFromJson(Map json) => $checkedCreate(
      r'_$AudioPlayInfoImpl',
      json,
      ($checkedConvert) {
        final val = _$AudioPlayInfoImpl(
          supportAudioQualities: $checkedConvert(
              'supportAudioQualities',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => AudioQuality.fromJson(e as String))
                      .toList() ??
                  const []),
          audios: $checkedConvert(
              'audios',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => AudioPlayItem.fromJson(
                          Map<String, dynamic>.from(e as Map)))
                      .toList() ??
                  const []),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AudioPlayInfoImplToJson(_$AudioPlayInfoImpl instance) =>
    <String, dynamic>{
      'supportAudioQualities': instance.supportAudioQualities,
      'audios': instance.audios,
    };
