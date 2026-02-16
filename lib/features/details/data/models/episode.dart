import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
abstract class Episode with _$Episode {
  const factory Episode({
    required int id,
    required String name,
    required String overview,
    @JsonKey(name: 'still_path') String? stillPath,
    @JsonKey(name: 'vote_average') @Default(0.0) double voteAverage,
    @JsonKey(name: 'air_date') String? airDate,
    @JsonKey(name: 'season_number') required int seasonNumber,
    @JsonKey(name: 'episode_number') required int episodeNumber,
    @Default(0) int runtime,
  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) => _$EpisodeFromJson(json);
}
