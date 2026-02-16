// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TvDetail _$TvDetailFromJson(Map<String, dynamic> json) => _TvDetail(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  overview: json['overview'] as String? ?? '',
  posterPath: json['poster_path'] as String?,
  backdropPath: json['backdrop_path'] as String?,
  voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
  firstAirDate: json['first_air_date'] as String?,
  genres:
      (json['genres'] as List<dynamic>?)
          ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  seasons:
      (json['seasons'] as List<dynamic>?)
          ?.map((e) => Season.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  numberOfEpisodes: (json['number_of_episodes'] as num?)?.toInt() ?? 0,
  numberOfSeasons: (json['number_of_seasons'] as num?)?.toInt() ?? 0,
  status: json['status'] as String? ?? '',
);

Map<String, dynamic> _$TvDetailToJson(_TvDetail instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'overview': instance.overview,
  'poster_path': instance.posterPath,
  'backdrop_path': instance.backdropPath,
  'vote_average': instance.voteAverage,
  'first_air_date': instance.firstAirDate,
  'genres': instance.genres,
  'seasons': instance.seasons,
  'number_of_episodes': instance.numberOfEpisodes,
  'number_of_seasons': instance.numberOfSeasons,
  'status': instance.status,
};
