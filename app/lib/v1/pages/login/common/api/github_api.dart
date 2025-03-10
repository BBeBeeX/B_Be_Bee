import 'package:b_be_bee_app/common/api_constants.dart';
import 'package:b_be_bee_app/util/rhttp_utils.dart';
import 'package:b_be_bee_app/v1/pages/login/common/api/github_releases_item.dart';

class GithubApi {
  static Future<GithubReleasesItemModel> requestLatestRelease() async {
    var response = await RhttpUtils().get(ApiConstants.githubLatestRelease,
        // options: Options(headers: {
        //   "Authorization": base64
        //       .decode(
        //           "dG9rZW4gZ2hwX05ia0huNm9aRlRJN0ZyTzFPb1R4MkF3U21oTFN0OTBhN1lQVQ==")
        //       .toString()
        // })
        );
    return GithubReleasesItemModel.fromJson(response.bodyToJson);
  }
}
