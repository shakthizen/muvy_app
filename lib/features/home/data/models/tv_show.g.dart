// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_show.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TvShow _$TvShowFromJson(Map<String, dynamic> json) => _TvShow(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  overview: json['overview'] as String? ?? '',
  posterPath: json['poster_path'] as String?,
  backdropPath: json['backdrop_path'] as String?,
  voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
  firstAirDate: json['first_air_date'] as String?,
);

Map<String, dynamic> _$TvShowToJson(_TvShow instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'overview': instance.overview,
  'poster_path': instance.posterPath,
  'backdrop_path': instance.backdropPath,
  'vote_average': instance.voteAverage,
  'first_air_date': instance.firstAirDate,
};
