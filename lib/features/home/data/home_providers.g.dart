// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(homeRepository)
final homeRepositoryProvider = HomeRepositoryProvider._();

final class HomeRepositoryProvider
    extends $FunctionalProvider<HomeRepository, HomeRepository, HomeRepository>
    with $Provider<HomeRepository> {
  HomeRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeRepositoryHash();

  @$internal
  @override
  $ProviderElement<HomeRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  HomeRepository create(Ref ref) {
    return homeRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HomeRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HomeRepository>(value),
    );
  }
}

String _$homeRepositoryHash() => r'a7ad35b71d152c2f2e026facffd4f91979e425ab';

@ProviderFor(trendingMovies)
final trendingMoviesProvider = TrendingMoviesProvider._();

final class TrendingMoviesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Movie>>,
          List<Movie>,
          FutureOr<List<Movie>>
        >
    with $FutureModifier<List<Movie>>, $FutureProvider<List<Movie>> {
  TrendingMoviesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'trendingMoviesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$trendingMoviesHash();

  @$internal
  @override
  $FutureProviderElement<List<Movie>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Movie>> create(Ref ref) {
    return trendingMovies(ref);
  }
}

String _$trendingMoviesHash() => r'f3a6ef20ba9210b88f2304590ad7bba71fa5f9b7';

@ProviderFor(popularMovies)
final popularMoviesProvider = PopularMoviesProvider._();

final class PopularMoviesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Movie>>,
          List<Movie>,
          FutureOr<List<Movie>>
        >
    with $FutureModifier<List<Movie>>, $FutureProvider<List<Movie>> {
  PopularMoviesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'popularMoviesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$popularMoviesHash();

  @$internal
  @override
  $FutureProviderElement<List<Movie>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Movie>> create(Ref ref) {
    return popularMovies(ref);
  }
}

String _$popularMoviesHash() => r'898c5ad7268bc00b57ff617104c26f398b5ddd85';

@ProviderFor(topRatedMovies)
final topRatedMoviesProvider = TopRatedMoviesProvider._();

final class TopRatedMoviesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Movie>>,
          List<Movie>,
          FutureOr<List<Movie>>
        >
    with $FutureModifier<List<Movie>>, $FutureProvider<List<Movie>> {
  TopRatedMoviesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'topRatedMoviesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$topRatedMoviesHash();

  @$internal
  @override
  $FutureProviderElement<List<Movie>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Movie>> create(Ref ref) {
    return topRatedMovies(ref);
  }
}

String _$topRatedMoviesHash() => r'04bea1b1f8bda7fb3fd492e689c09882b469b370';

@ProviderFor(popularTv)
final popularTvProvider = PopularTvProvider._();

final class PopularTvProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<TvShow>>,
          List<TvShow>,
          FutureOr<List<TvShow>>
        >
    with $FutureModifier<List<TvShow>>, $FutureProvider<List<TvShow>> {
  PopularTvProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'popularTvProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$popularTvHash();

  @$internal
  @override
  $FutureProviderElement<List<TvShow>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<TvShow>> create(Ref ref) {
    return popularTv(ref);
  }
}

String _$popularTvHash() => r'53054372a32d1fe82744e3a25bb28981a9f85687';

@ProviderFor(topRatedTv)
final topRatedTvProvider = TopRatedTvProvider._();

final class TopRatedTvProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<TvShow>>,
          List<TvShow>,
          FutureOr<List<TvShow>>
        >
    with $FutureModifier<List<TvShow>>, $FutureProvider<List<TvShow>> {
  TopRatedTvProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'topRatedTvProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$topRatedTvHash();

  @$internal
  @override
  $FutureProviderElement<List<TvShow>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<TvShow>> create(Ref ref) {
    return topRatedTv(ref);
  }
}

String _$topRatedTvHash() => r'eaa1bd8ce073bc21e52550c6a02dd302a9b07458';
