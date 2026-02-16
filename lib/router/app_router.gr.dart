// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:muvy/features/details/presentation/movie_details_page.dart'
    as _i3;
import 'package:muvy/features/details/presentation/tv_details_page.dart' as _i5;
import 'package:muvy/features/discover/presentation/discover_page.dart' as _i1;
import 'package:muvy/features/home/presentation/home_page.dart' as _i2;
import 'package:muvy/features/search/presentation/search_page.dart' as _i4;

/// generated route for
/// [_i1.DiscoverPage]
class DiscoverRoute extends _i6.PageRouteInfo<void> {
  const DiscoverRoute({List<_i6.PageRouteInfo>? children})
    : super(DiscoverRoute.name, initialChildren: children);

  static const String name = 'DiscoverRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.DiscoverPage();
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.MovieDetailsPage]
class MovieDetailsRoute extends _i6.PageRouteInfo<MovieDetailsRouteArgs> {
  MovieDetailsRoute({
    _i7.Key? key,
    required int movieId,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         MovieDetailsRoute.name,
         args: MovieDetailsRouteArgs(key: key, movieId: movieId),
         rawPathParams: {'id': movieId},
         initialChildren: children,
       );

  static const String name = 'MovieDetailsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<MovieDetailsRouteArgs>(
        orElse: () => MovieDetailsRouteArgs(movieId: pathParams.getInt('id')),
      );
      return _i3.MovieDetailsPage(key: args.key, movieId: args.movieId);
    },
  );
}

class MovieDetailsRouteArgs {
  const MovieDetailsRouteArgs({this.key, required this.movieId});

  final _i7.Key? key;

  final int movieId;

  @override
  String toString() {
    return 'MovieDetailsRouteArgs{key: $key, movieId: $movieId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MovieDetailsRouteArgs) return false;
    return key == other.key && movieId == other.movieId;
  }

  @override
  int get hashCode => key.hashCode ^ movieId.hashCode;
}

/// generated route for
/// [_i4.SearchPage]
class SearchRoute extends _i6.PageRouteInfo<void> {
  const SearchRoute({List<_i6.PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.SearchPage();
    },
  );
}

/// generated route for
/// [_i5.TvDetailsPage]
class TvDetailsRoute extends _i6.PageRouteInfo<TvDetailsRouteArgs> {
  TvDetailsRoute({
    _i7.Key? key,
    required int tvId,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         TvDetailsRoute.name,
         args: TvDetailsRouteArgs(key: key, tvId: tvId),
         rawPathParams: {'id': tvId},
         initialChildren: children,
       );

  static const String name = 'TvDetailsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<TvDetailsRouteArgs>(
        orElse: () => TvDetailsRouteArgs(tvId: pathParams.getInt('id')),
      );
      return _i5.TvDetailsPage(key: args.key, tvId: args.tvId);
    },
  );
}

class TvDetailsRouteArgs {
  const TvDetailsRouteArgs({this.key, required this.tvId});

  final _i7.Key? key;

  final int tvId;

  @override
  String toString() {
    return 'TvDetailsRouteArgs{key: $key, tvId: $tvId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TvDetailsRouteArgs) return false;
    return key == other.key && tvId == other.tvId;
  }

  @override
  int get hashCode => key.hashCode ^ tvId.hashCode;
}
