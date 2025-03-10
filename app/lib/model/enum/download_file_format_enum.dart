enum DownloadFileFormatEnum{
  mp4('mp4'),
  flac('flac');

  final String label;
  const DownloadFileFormatEnum(this.label);


  factory DownloadFileFormatEnum.fromJson(String json) => values.byName(json);
  String toJson() => name;
}