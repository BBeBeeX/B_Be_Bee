import 'package:b_be_bee_app/common/api_constants.dart';
import 'package:b_be_bee_app/model/dto/user/user_card_response.dart';
import 'package:b_be_bee_app/util/rhttp_utils.dart';

class BiliUserApi {
  static Future<UserCardResponseData> getCollects2Resource(String uid) async {
    final userCardResponse =
        await RhttpUtils.instance.get(ApiConstants.usercard, query: {
      'uids': uid.toString(),
    });

    return UserCardResponse.fromJson(userCardResponse.bodyToJson).data?.first ??
        UserCardResponseData();
  }
}
