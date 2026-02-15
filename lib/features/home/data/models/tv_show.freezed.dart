// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_show.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TvShow {

 int get id; String get name; String get overview;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'backdrop_path') String? get backdropPath;@JsonKey(name: 'vote_average') double get voteAverage;@JsonKey(name: 'first_air_date') String? get firstAirDate;
/// Create a copy of TvShow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TvShowCopyWith<TvShow> get copyWith => _$TvShowCopyWithImpl<TvShow>(this as TvShow, _$identity);

  /// Serializes this TvShow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvShow&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.firstAirDate, firstAirDate) || other.firstAirDate == firstAirDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,overview,posterPath,backdropPath,voteAverage,firstAirDate);

@override
String toString() {
  return 'TvShow(id: $id, name: $name, overview: $overview, posterPath: $posterPath, backdropPath: $backdropPath, voteAverage: $voteAverage, firstAirDate: $firstAirDate)';
}


}

/// @nodoc
abstract mixin class $TvShowCopyWith<$Res>  {
  factory $TvShowCopyWith(TvShow value, $Res Function(TvShow) _then) = _$TvShowCopyWithImpl;
@useResult
$Res call({
 int id, String name, String overview,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'first_air_date') String? firstAirDate
});




}
/// @nodoc
class _$TvShowCopyWithImpl<$Res>
    implements $TvShowCopyWith<$Res> {
  _$TvShowCopyWithImpl(this._self, this._then);

  final TvShow _self;
  final $Res Function(TvShow) _then;

/// Create a copy of TvShow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? overview = null,Object? posterPath = freezed,Object? backdropPath = freezed,Object? voteAverage = null,Object? firstAirDate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,firstAirDate: freezed == firstAirDate ? _self.firstAirDate : firstAirDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TvShow].
extension TvShowPatterns on TvShow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TvShow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TvShow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TvShow value)  $default,){
final _that = this;
switch (_that) {
case _TvShow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TvShow value)?  $default,){
final _that = this;
switch (_that) {
case _TvShow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String overview, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'first_air_date')  String? firstAirDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TvShow() when $default != null:
return $default(_that.id,_that.name,_that.overview,_that.posterPath,_that.backdropPath,_that.voteAverage,_that.firstAirDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String overview, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'first_air_date')  String? firstAirDate)  $default,) {final _that = this;
switch (_that) {
case _TvShow():
return $default(_that.id,_that.name,_that.overview,_that.posterPath,_that.backdropPath,_that.voteAverage,_that.firstAirDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String overview, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'first_air_date')  String? firstAirDate)?  $default,) {final _that = this;
switch (_that) {
case _TvShow() when $default != null:
return $default(_that.id,_that.name,_that.overview,_that.posterPath,_that.backdropPath,_that.voteAverage,_that.firstAirDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TvShow implements TvShow {
  const _TvShow({required this.id, required this.name, this.overview = '', @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'backdrop_path') this.backdropPath, @JsonKey(name: 'vote_average') this.voteAverage = 0.0, @JsonKey(name: 'first_air_date') this.firstAirDate});
  factory _TvShow.fromJson(Map<String, dynamic> json) => _$TvShowFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey() final  String overview;
@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;
@override@JsonKey(name: 'vote_average') final  double voteAverage;
@override@JsonKey(name: 'first_air_date') final  String? firstAirDate;

/// Create a copy of TvShow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TvShowCopyWith<_TvShow> get copyWith => __$TvShowCopyWithImpl<_TvShow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TvShowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TvShow&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.firstAirDate, firstAirDate) || other.firstAirDate == firstAirDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,overview,posterPath,backdropPath,voteAverage,firstAirDate);

@override
String toString() {
  return 'TvShow(id: $id, name: $name, overview: $overview, posterPath: $posterPath, backdropPath: $backdropPath, voteAverage: $voteAverage, firstAirDate: $firstAirDate)';
}


}

/// @nodoc
abstract mixin class _$TvShowCopyWith<$Res> implements $TvShowCopyWith<$Res> {
  factory _$TvShowCopyWith(_TvShow value, $Res Function(_TvShow) _then) = __$TvShowCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String overview,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'first_air_date') String? firstAirDate
});




}
/// @nodoc
class __$TvShowCopyWithImpl<$Res>
    implements _$TvShowCopyWith<$Res> {
  __$TvShowCopyWithImpl(this._self, this._then);

  final _TvShow _self;
  final $Res Function(_TvShow) _then;

/// Create a copy of TvShow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? overview = null,Object? posterPath = freezed,Object? backdropPath = freezed,Object? voteAverage = null,Object? firstAirDate = freezed,}) {
  return _then(_TvShow(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,firstAirDate: freezed == firstAirDate ? _self.firstAirDate : firstAirDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
