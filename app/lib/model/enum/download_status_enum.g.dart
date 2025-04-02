// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_status_enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DownloadStatusEnumAdapter extends TypeAdapter<DownloadStatusEnum> {
  @override
  final int typeId = 2;

  @override
  DownloadStatusEnum read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return DownloadStatusEnum.error;
      case 1:
        return DownloadStatusEnum.canceled;
      case 2:
        return DownloadStatusEnum.pending;
      case 3:
        return DownloadStatusEnum.init;
      case 4:
        return DownloadStatusEnum.downloadPaused;
      case 5:
        return DownloadStatusEnum.downloading;
      case 6:
        return DownloadStatusEnum.downloadSuccess;
      case 7:
        return DownloadStatusEnum.lyricsPaused;
      case 8:
        return DownloadStatusEnum.lyrics;
      case 9:
        return DownloadStatusEnum.lyricsSuccess;
      case 10:
        return DownloadStatusEnum.imagePaused;
      case 11:
        return DownloadStatusEnum.image;
      case 12:
        return DownloadStatusEnum.imageSuccess;
      case 13:
        return DownloadStatusEnum.convertPaused;
      case 14:
        return DownloadStatusEnum.converting;
      case 15:
        return DownloadStatusEnum.convertSuccess;
      case 16:
        return DownloadStatusEnum.completedPaused;
      case 17:
        return DownloadStatusEnum.completed;
      default:
        return DownloadStatusEnum.error;
    }
  }

  @override
  void write(BinaryWriter writer, DownloadStatusEnum obj) {
    switch (obj) {
      case DownloadStatusEnum.error:
        writer.writeByte(0);
      case DownloadStatusEnum.canceled:
        writer.writeByte(1);
      case DownloadStatusEnum.pending:
        writer.writeByte(2);
      case DownloadStatusEnum.init:
        writer.writeByte(3);
      case DownloadStatusEnum.downloadPaused:
        writer.writeByte(4);
      case DownloadStatusEnum.downloading:
        writer.writeByte(5);
      case DownloadStatusEnum.downloadSuccess:
        writer.writeByte(6);
      case DownloadStatusEnum.lyricsPaused:
        writer.writeByte(7);
      case DownloadStatusEnum.lyrics:
        writer.writeByte(8);
      case DownloadStatusEnum.lyricsSuccess:
        writer.writeByte(9);
      case DownloadStatusEnum.imagePaused:
        writer.writeByte(10);
      case DownloadStatusEnum.image:
        writer.writeByte(11);
      case DownloadStatusEnum.imageSuccess:
        writer.writeByte(12);
      case DownloadStatusEnum.convertPaused:
        writer.writeByte(13);
      case DownloadStatusEnum.converting:
        writer.writeByte(14);
      case DownloadStatusEnum.convertSuccess:
        writer.writeByte(15);
      case DownloadStatusEnum.completedPaused:
        writer.writeByte(16);
      case DownloadStatusEnum.completed:
        writer.writeByte(17);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DownloadStatusEnumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
