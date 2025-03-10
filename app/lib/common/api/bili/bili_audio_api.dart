import 'package:b_be_bee_app/common/api_constants.dart';
import 'package:b_be_bee_app/model/dto/audio/audio_top_list_dto.dart';
import 'package:b_be_bee_app/model/dto/audio/audio_top_music_list_dto.dart';
import 'package:b_be_bee_app/util/rhttp_utils.dart';

class BiliAudioApi{

  static Future<List<AudioToplistPeriodItem>> getAudioTopList() async {
    final audioTopListResponse = await RhttpUtils().get(
        ApiConstants.audioToplist,
        query: {
          'list_type': '1'
        }
    );
    final data = AudioToplistResponse.fromJson(audioTopListResponse.bodyToJson).data;

    if (data == null || data.list == null) {
      return [];
    }

    final allItems = <AudioToplistPeriodItem>[];

    for (final periodItems in data.list!.values) {
      allItems.addAll(periodItems);
    }

    allItems.sort((a, b) => b.priod.compareTo(a.priod));
    return allItems;
  }

  static Future<AudioTopMusicData> getAudioTopMusicList(String listId) async {
    final audioTopMusicListResponse = await RhttpUtils().get(
        ApiConstants.audioTopMusicList,
        query: {
          'list_id': listId
        }
    );
    return AudioTopMusicListResponse.fromJson(audioTopMusicListResponse.bodyToJson).data ?? AudioTopMusicData() ;
  }
}