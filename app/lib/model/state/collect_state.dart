import 'package:b_be_bee_app/model/dao/collect_playlist.dart';


class CollectsState {
  final List<String> playlistIds;
  final List<CollectPlaylist> playlists;

  const CollectsState({
    this.playlistIds = const [],
    this.playlists = const [],
  });

  CollectsState copyWith({
    List<String>? playlistIds,
    List<CollectPlaylist>? playlists,
  }) {
    return CollectsState(
      playlistIds: playlistIds ?? this.playlistIds,
      playlists: playlists ?? this.playlists,
    );
  }
}