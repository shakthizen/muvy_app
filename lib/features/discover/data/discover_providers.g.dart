// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(discoverRepository)
final discoverRepositoryProvider = DiscoverRepositoryProvider._();

final class DiscoverRepositoryProvider
    extends
        $FunctionalProvider<
          DiscoverRepository,
          DiscoverRepository,
          DiscoverRepository
        >
    with $Provider<DiscoverRepository> {
  DiscoverRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'discoverRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$discoverRepositoryHash();

  @$internal
  @override
  $ProviderElement<DiscoverRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DiscoverRepository create(Ref ref) {
    return discoverRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DiscoverRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DiscoverRepository>(value),
    );
  }
}

String _$discoverRepositoryHash() =>
    r'398df80071adea5c2c433850ad6b63deed3f0e4e';

@ProviderFor(movieGenres)
final movieGenresProvider = MovieGenresProvider._();

final class MovieGenresProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Genre>>,
          List<Genre>,
          FutureOr<List<Genre>>
        >
    with $FutureModifier<List<Genre>>, $FutureProvider<List<Genre>> {
  MovieGenresProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'movieGenresProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$movieGenresHash();

  @$internal
  @override
  $FutureProviderElement<List<Genre>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Genre>> create(Ref ref) {
    return movieGenres(ref);
  }
}

String _$movieGenresHash() => r'297999e685cd362f9ea30473831eb3bd2f09826f';

@ProviderFor(tvGenres)
final tvGenresProvider = TvGenresProvider._();

final class TvGenresProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Genre>>,
          List<Genre>,
          FutureOr<List<Genre>>
        >
    with $FutureModifier<List<Genre>>, $FutureProvider<List<Genre>> {
  TvGenresProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tvGenresProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tvGenresHash();

  @$internal
  @override
  $FutureProviderElement<List<Genre>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Genre>> create(Ref ref) {
    return tvGenres(ref);
  }
}

String _$tvGenresHash() => r'cbdf6dfd0ac5790ee662805c5a66a46b8ce66c08';

@ProviderFor(discoveredMovies)
final discoveredMoviesProvider = DiscoveredMoviesFamily._();

final class DiscoveredMoviesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Movie>>,
          List<Movie>,
          FutureOr<List<Movie>>
        >
    with $FutureModifier<List<Movie>>, $FutureProvider<List<Movie>> {
  DiscoveredMoviesProvider._({
    required DiscoveredMoviesFamily super.from,
    required ({int? genreId, String? sortBy}) super.argument,
  }) : super(
         retry: null,
         name: r'discoveredMoviesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$discoveredMoviesHash();

  @override
  String toString() {
    return r'discoveredMoviesProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<Movie>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Movie>> create(Ref ref) {
    final argument = this.argument as ({int? genreId, String? sortBy});
    return discoveredMovies(
      ref,
      genreId: argument.genreId,
      sortBy: argument.sortBy,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is DiscoveredMoviesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$discoveredMoviesHash() => r'51c36aeb86b1b748a6a2af96446a71fcbbb69c26';

final class DiscoveredMoviesFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<Movie>>,
          ({int? genreId, String? sortBy})
        > {
  DiscoveredMoviesFamily._()
    : super(
        retry: null,
        name: r'discoveredMoviesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DiscoveredMoviesProvider call({int? genreId, String? sortBy}) =>
      DiscoveredMoviesProvider._(
        argument: (genreId: genreId, sortBy: sortBy),
        from: this,
      );

  @override
  String toString() => r'discoveredMoviesProvider';
}
