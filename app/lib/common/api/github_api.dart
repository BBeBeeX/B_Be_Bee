import 'package:b_be_bee_app/common/api_constants.dart';
import 'package:b_be_bee_app/model/dto/github_releases_item.dart';
import 'package:b_be_bee_app/util/rhttp_utils.dart';

class GithubApi {
  static Future<GithubReleasesItemModel> requestLatestRelease() async {
    var response = await RhttpUtils().get(ApiConstants.githubLatestRelease,
        );
    return GithubReleasesItemModel.fromJson(response.bodyToJson);
  }
}
