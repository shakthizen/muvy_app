// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Episode _$EpisodeFromJson(Map<String, dynamic> json) => _Episode(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  overview: json['overview'] as String,
  stillPath: json['still_path'] as String?,
  voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
  airDate: json['air_date'] as String?,
  seasonNumber: (json['season_number'] as num).toInt(),
  episodeNumber: (json['episode_number'] as num).toInt(),
  runtime: (json['runtime'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$EpisodeToJson(_Episode instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'overview': instance.overview,
  'still_path': instance.stillPath,
  'vote_average': instance.voteAverage,
  'air_date': instance.airDate,
  'season_number': instance.seasonNumber,
  'episode_number': instance.episodeNumber,
  'runtime': instance.runtime,
};
