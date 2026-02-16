// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Season _$SeasonFromJson(Map<String, dynamic> json) => _Season(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  overview: json['overview'] as String? ?? '',
  posterPath: json['poster_path'] as String?,
  seasonNumber: (json['season_number'] as num).toInt(),
  episodeCount: (json['episode_count'] as num?)?.toInt() ?? 0,
  airDate: json['air_date'] as String?,
);

Map<String, dynamic> _$SeasonToJson(_Season instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'overview': instance.overview,
  'poster_path': instance.posterPath,
  'season_number': instance.seasonNumber,
  'episode_count': instance.episodeCount,
  'air_date': instance.airDate,
};
