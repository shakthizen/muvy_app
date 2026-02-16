// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TvDetail {

 int get id; String get name; String get overview;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'backdrop_path') String? get backdropPath;@JsonKey(name: 'vote_average') double get voteAverage;@JsonKey(name: 'first_air_date') String? get firstAirDate; List<Genre> get genres; List<Season> get seasons;@JsonKey(name: 'number_of_episodes') int get numberOfEpisodes;@JsonKey(name: 'number_of_seasons') int get numberOfSeasons; String get status;
/// Create a copy of TvDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TvDetailCopyWith<TvDetail> get copyWith => _$TvDetailCopyWithImpl<TvDetail>(this as TvDetail, _$identity);

  /// Serializes this TvDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.firstAirDate, firstAirDate) || other.firstAirDate == firstAirDate)&&const DeepCollectionEquality().equals(other.genres, genres)&&const DeepCollectionEquality().equals(other.seasons, seasons)&&(identical(other.numberOfEpisodes, numberOfEpisodes) || other.numberOfEpisodes == numberOfEpisodes)&&(identical(other.numberOfSeasons, numberOfSeasons) || other.numberOfSeasons == numberOfSeasons)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,overview,posterPath,backdropPath,voteAverage,firstAirDate,const DeepCollectionEquality().hash(genres),const DeepCollectionEquality().hash(seasons),numberOfEpisodes,numberOfSeasons,status);

@override
String toString() {
  return 'TvDetail(id: $id, name: $name, overview: $overview, posterPath: $posterPath, backdropPath: $backdropPath, voteAverage: $voteAverage, firstAirDate: $firstAirDate, genres: $genres, seasons: $seasons, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, status: $status)';
}


}

/// @nodoc
abstract mixin class $TvDetailCopyWith<$Res>  {
  factory $TvDetailCopyWith(TvDetail value, $Res Function(TvDetail) _then) = _$TvDetailCopyWithImpl;
@useResult
$Res call({
 int id, String name, String overview,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'first_air_date') String? firstAirDate, List<Genre> genres, List<Season> seasons,@JsonKey(name: 'number_of_episodes') int numberOfEpisodes,@JsonKey(name: 'number_of_seasons') int numberOfSeasons, String status
});




}
/// @nodoc
class _$TvDetailCopyWithImpl<$Res>
    implements $TvDetailCopyWith<$Res> {
  _$TvDetailCopyWithImpl(this._self, this._then);

  final TvDetail _self;
  final $Res Function(TvDetail) _then;

/// Create a copy of TvDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? overview = null,Object? posterPath = freezed,Object? backdropPath = freezed,Object? voteAverage = null,Object? firstAirDate = freezed,Object? genres = null,Object? seasons = null,Object? numberOfEpisodes = null,Object? numberOfSeasons = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,firstAirDate: freezed == firstAirDate ? _self.firstAirDate : firstAirDate // ignore: cast_nullable_to_non_nullable
as String?,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<Genre>,seasons: null == seasons ? _self.seasons : seasons // ignore: cast_nullable_to_non_nullable
as List<Season>,numberOfEpisodes: null == numberOfEpisodes ? _self.numberOfEpisodes : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
as int,numberOfSeasons: null == numberOfSeasons ? _self.numberOfSeasons : numberOfSeasons // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TvDetail].
extension TvDetailPatterns on TvDetail {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TvDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TvDetail() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TvDetail value)  $default,){
final _that = this;
switch (_that) {
case _TvDetail():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TvDetail value)?  $default,){
final _that = this;
switch (_that) {
case _TvDetail() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String overview, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'first_air_date')  String? firstAirDate,  List<Genre> genres,  List<Season> seasons, @JsonKey(name: 'number_of_episodes')  int numberOfEpisodes, @JsonKey(name: 'number_of_seasons')  int numberOfSeasons,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TvDetail() when $default != null:
return $default(_that.id,_that.name,_that.overview,_that.posterPath,_that.backdropPath,_that.voteAverage,_that.firstAirDate,_that.genres,_that.seasons,_that.numberOfEpisodes,_that.numberOfSeasons,_that.status);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String overview, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'first_air_date')  String? firstAirDate,  List<Genre> genres,  List<Season> seasons, @JsonKey(name: 'number_of_episodes')  int numberOfEpisodes, @JsonKey(name: 'number_of_seasons')  int numberOfSeasons,  String status)  $default,) {final _that = this;
switch (_that) {
case _TvDetail():
return $default(_that.id,_that.name,_that.overview,_that.posterPath,_that.backdropPath,_that.voteAverage,_that.firstAirDate,_that.genres,_that.seasons,_that.numberOfEpisodes,_that.numberOfSeasons,_that.status);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String overview, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'first_air_date')  String? firstAirDate,  List<Genre> genres,  List<Season> seasons, @JsonKey(name: 'number_of_episodes')  int numberOfEpisodes, @JsonKey(name: 'number_of_seasons')  int numberOfSeasons,  String status)?  $default,) {final _that = this;
switch (_that) {
case _TvDetail() when $default != null:
return $default(_that.id,_that.name,_that.overview,_that.posterPath,_that.backdropPath,_that.voteAverage,_that.firstAirDate,_that.genres,_that.seasons,_that.numberOfEpisodes,_that.numberOfSeasons,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TvDetail implements TvDetail {
  const _TvDetail({required this.id, required this.name, this.overview = '', @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'backdrop_path') this.backdropPath, @JsonKey(name: 'vote_average') this.voteAverage = 0.0, @JsonKey(name: 'first_air_date') this.firstAirDate, final  List<Genre> genres = const [], final  List<Season> seasons = const [], @JsonKey(name: 'number_of_episodes') this.numberOfEpisodes = 0, @JsonKey(name: 'number_of_seasons') this.numberOfSeasons = 0, this.status = ''}): _genres = genres,_seasons = seasons;
  factory _TvDetail.fromJson(Map<String, dynamic> json) => _$TvDetailFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey() final  String overview;
@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;
@override@JsonKey(name: 'vote_average') final  double voteAverage;
@override@JsonKey(name: 'first_air_date') final  String? firstAirDate;
 final  List<Genre> _genres;
@override@JsonKey() List<Genre> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}

 final  List<Season> _seasons;
@override@JsonKey() List<Season> get seasons {
  if (_seasons is EqualUnmodifiableListView) return _seasons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_seasons);
}

@override@JsonKey(name: 'number_of_episodes') final  int numberOfEpisodes;
@override@JsonKey(name: 'number_of_seasons') final  int numberOfSeasons;
@override@JsonKey() final  String status;

/// Create a copy of TvDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TvDetailCopyWith<_TvDetail> get copyWith => __$TvDetailCopyWithImpl<_TvDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TvDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TvDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.firstAirDate, firstAirDate) || other.firstAirDate == firstAirDate)&&const DeepCollectionEquality().equals(other._genres, _genres)&&const DeepCollectionEquality().equals(other._seasons, _seasons)&&(identical(other.numberOfEpisodes, numberOfEpisodes) || other.numberOfEpisodes == numberOfEpisodes)&&(identical(other.numberOfSeasons, numberOfSeasons) || other.numberOfSeasons == numberOfSeasons)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,overview,posterPath,backdropPath,voteAverage,firstAirDate,const DeepCollectionEquality().hash(_genres),const DeepCollectionEquality().hash(_seasons),numberOfEpisodes,numberOfSeasons,status);

@override
String toString() {
  return 'TvDetail(id: $id, name: $name, overview: $overview, posterPath: $posterPath, backdropPath: $backdropPath, voteAverage: $voteAverage, firstAirDate: $firstAirDate, genres: $genres, seasons: $seasons, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, status: $status)';
}


}

/// @nodoc
abstract mixin class _$TvDetailCopyWith<$Res> implements $TvDetailCopyWith<$Res> {
  factory _$TvDetailCopyWith(_TvDetail value, $Res Function(_TvDetail) _then) = __$TvDetailCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String overview,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'first_air_date') String? firstAirDate, List<Genre> genres, List<Season> seasons,@JsonKey(name: 'number_of_episodes') int numberOfEpisodes,@JsonKey(name: 'number_of_seasons') int numberOfSeasons, String status
});




}
/// @nodoc
class __$TvDetailCopyWithImpl<$Res>
    implements _$TvDetailCopyWith<$Res> {
  __$TvDetailCopyWithImpl(this._self, this._then);

  final _TvDetail _self;
  final $Res Function(_TvDetail) _then;

/// Create a copy of TvDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? overview = null,Object? posterPath = freezed,Object? backdropPath = freezed,Object? voteAverage = null,Object? firstAirDate = freezed,Object? genres = null,Object? seasons = null,Object? numberOfEpisodes = null,Object? numberOfSeasons = null,Object? status = null,}) {
  return _then(_TvDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,firstAirDate: freezed == firstAirDate ? _self.firstAirDate : firstAirDate // ignore: cast_nullable_to_non_nullable
as String?,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<Genre>,seasons: null == seasons ? _self._seasons : seasons // ignore: cast_nullable_to_non_nullable
as List<Season>,numberOfEpisodes: null == numberOfEpisodes ? _self.numberOfEpisodes : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
as int,numberOfSeasons: null == numberOfSeasons ? _self.numberOfSeasons : numberOfSeasons // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
