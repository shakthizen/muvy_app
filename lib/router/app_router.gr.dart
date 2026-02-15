// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:muvy/features/discover/presentation/discover_page.dart' as _i1;
import 'package:muvy/features/home/presentation/home_page.dart' as _i2;
import 'package:muvy/features/search/presentation/search_page.dart' as _i3;

/// generated route for
/// [_i1.DiscoverPage]
class DiscoverRoute extends _i4.PageRouteInfo<void> {
  const DiscoverRoute({List<_i4.PageRouteInfo>? children})
    : super(DiscoverRoute.name, initialChildren: children);

  static const String name = 'DiscoverRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.DiscoverPage();
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.SearchPage]
class SearchRoute extends _i4.PageRouteInfo<void> {
  const SearchRoute({List<_i4.PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.SearchPage();
    },
  );
}
