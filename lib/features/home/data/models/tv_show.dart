import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_show.freezed.dart';
part 'tv_show.g.dart';

@freezed
abstract class TvShow with _$TvShow {
  const factory TvShow({
    required int id,
    required String name,
    @Default('') String overview,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'vote_average') @Default(0.0) double voteAverage,
    @JsonKey(name: 'first_air_date') String? firstAirDate,
  }) = _TvShow;

  factory TvShow.fromJson(Map<String, dynamic> json) => _$TvShowFromJson(json);
}
