import 'package:hive_ce/hive.dart';

part 'contrast_color_enum.g.dart';

@HiveType(typeId: 12)
enum ContrastColorEnum {
  @HiveField(0)
  blackAndWhite,

  @HiveField(1)
  opposite;
  //Opposite to the background color

  factory ContrastColorEnum.fromJson(String json) => values.byName(json);
  String toJson() => name;

  String getLabel() {
    switch (this) {
      case ContrastColorEnum.blackAndWhite:
        return '黑白色';
      case ContrastColorEnum.opposite:
        return '与背景色相反';
    }
  }
}
