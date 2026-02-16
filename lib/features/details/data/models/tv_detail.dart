import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../features/discover/data/models/genre.dart';
import 'season.dart';

part 'tv_detail.freezed.dart';
part 'tv_detail.g.dart';

@freezed
abstract class TvDetail with _$TvDetail {
  const factory TvDetail({
    required int id,
    required String name,
    @Default('') String overview,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'vote_average') @Default(0.0) double voteAverage,
    @JsonKey(name: 'first_air_date') String? firstAirDate,
    @Default([]) List<Genre> genres,
    @Default([]) List<Season> seasons,
    @JsonKey(name: 'number_of_episodes') @Default(0) int numberOfEpisodes,
    @JsonKey(name: 'number_of_seasons') @Default(0) int numberOfSeasons,
    @Default('') String status,
  }) = _TvDetail;

  factory TvDetail.fromJson(Map<String, dynamic> json) => _$TvDetailFromJson(json);
}
