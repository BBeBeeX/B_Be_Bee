import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'upper.freezed.dart';
part 'upper.g.dart';


@freezed
@HiveType(typeId: 5)
class Upper with _$Upper {
  const factory Upper({
    @HiveField(0) @Default('') String id,
    @HiveField(1) @Default('') String name,
    @HiveField(2) @Default('') String face,
  }) = _Upper;

  const Upper._();

  factory Upper.fromJson(Map<String, dynamic> json) => _$UpperFromJson(json);

  bool get isEmpty => id.isEmpty && name.isEmpty && face.isEmpty;
  bool get isNotEmpty => !isEmpty;
}
