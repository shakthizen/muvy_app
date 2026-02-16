// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(apiClient)
final apiClientProvider = ApiClientProvider._();

final class ApiClientProvider
    extends $FunctionalProvider<ApiClient, ApiClient, ApiClient>
    with $Provider<ApiClient> {
  ApiClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'apiClientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$apiClientHash();

  @$internal
  @override
  $ProviderElement<ApiClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ApiClient create(Ref ref) {
    return apiClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ApiClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ApiClient>(value),
    );
  }
}

String _$apiClientHash() => r'a0eb8837fc3cfc2ac414f9bdd23761e2186e929e';

@ProviderFor(detailsRepository)
final detailsRepositoryProvider = DetailsRepositoryProvider._();

final class DetailsRepositoryProvider
    extends
        $FunctionalProvider<
          DetailsRepository,
          DetailsRepository,
          DetailsRepository
        >
    with $Provider<DetailsRepository> {
  DetailsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'detailsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$detailsRepositoryHash();

  @$internal
  @override
  $ProviderElement<DetailsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DetailsRepository create(Ref ref) {
    return detailsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DetailsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DetailsRepository>(value),
    );
  }
}

String _$detailsRepositoryHash() => r'9c30d96bed150ddd27ee4ca5520d513974372720';

@ProviderFor(movieDetails)
final movieDetailsProvider = MovieDetailsFamily._();

final class MovieDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<MovieDetail>,
          MovieDetail,
          FutureOr<MovieDetail>
        >
    with $FutureModifier<MovieDetail>, $FutureProvider<MovieDetail> {
  MovieDetailsProvider._({
    required MovieDetailsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'movieDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$movieDetailsHash();

  @override
  String toString() {
    return r'movieDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<MovieDetail> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<MovieDetail> create(Ref ref) {
    final argument = this.argument as int;
    return movieDetails(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is MovieDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$movieDetailsHash() => r'b57b1d4027ff227dd76a48bedd0cafdc884a5fce';

final class MovieDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<MovieDetail>, int> {
  MovieDetailsFamily._()
    : super(
        retry: null,
        name: r'movieDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MovieDetailsProvider call(int id) =>
      MovieDetailsProvider._(argument: id, from: this);

  @override
  String toString() => r'movieDetailsProvider';
}

@ProviderFor(tvDetails)
final tvDetailsProvider = TvDetailsFamily._();

final class TvDetailsProvider
    extends
        $FunctionalProvider<AsyncValue<TvDetail>, TvDetail, FutureOr<TvDetail>>
    with $FutureModifier<TvDetail>, $FutureProvider<TvDetail> {
  TvDetailsProvider._({
    required TvDetailsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'tvDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$tvDetailsHash();

  @override
  String toString() {
    return r'tvDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<TvDetail> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<TvDetail> create(Ref ref) {
    final argument = this.argument as int;
    return tvDetails(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is TvDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$tvDetailsHash() => r'987098f66d897b7643de9fa441d1ec3a1ab7c19f';

final class TvDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<TvDetail>, int> {
  TvDetailsFamily._()
    : super(
        retry: null,
        name: r'tvDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TvDetailsProvider call(int id) =>
      TvDetailsProvider._(argument: id, from: this);

  @override
  String toString() => r'tvDetailsProvider';
}

@ProviderFor(movieCredits)
final movieCreditsProvider = MovieCreditsFamily._();

final class MovieCreditsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Cast>>,
          List<Cast>,
          FutureOr<List<Cast>>
        >
    with $FutureModifier<List<Cast>>, $FutureProvider<List<Cast>> {
  MovieCreditsProvider._({
    required MovieCreditsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'movieCreditsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$movieCreditsHash();

  @override
  String toString() {
    return r'movieCreditsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Cast>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Cast>> create(Ref ref) {
    final argument = this.argument as int;
    return movieCredits(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is MovieCreditsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$movieCreditsHash() => r'32768ea76bda520f9c6a6e44d66e2354e66dea3c';

final class MovieCreditsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Cast>>, int> {
  MovieCreditsFamily._()
    : super(
        retry: null,
        name: r'movieCreditsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MovieCreditsProvider call(int id) =>
      MovieCreditsProvider._(argument: id, from: this);

  @override
  String toString() => r'movieCreditsProvider';
}

@ProviderFor(tvCredits)
final tvCreditsProvider = TvCreditsFamily._();

final class TvCreditsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Cast>>,
          List<Cast>,
          FutureOr<List<Cast>>
        >
    with $FutureModifier<List<Cast>>, $FutureProvider<List<Cast>> {
  TvCreditsProvider._({
    required TvCreditsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'tvCreditsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$tvCreditsHash();

  @override
  String toString() {
    return r'tvCreditsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Cast>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Cast>> create(Ref ref) {
    final argument = this.argument as int;
    return tvCredits(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is TvCreditsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$tvCreditsHash() => r'd6af7331ec090c8d56c400bd25fc019c9c72a0c2';

final class TvCreditsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Cast>>, int> {
  TvCreditsFamily._()
    : super(
        retry: null,
        name: r'tvCreditsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TvCreditsProvider call(int id) =>
      TvCreditsProvider._(argument: id, from: this);

  @override
  String toString() => r'tvCreditsProvider';
}

@ProviderFor(similarMovies)
final similarMoviesProvider = SimilarMoviesFamily._();

final class SimilarMoviesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Movie>>,
          List<Movie>,
          FutureOr<List<Movie>>
        >
    with $FutureModifier<List<Movie>>, $FutureProvider<List<Movie>> {
  SimilarMoviesProvider._({
    required SimilarMoviesFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'similarMoviesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$similarMoviesHash();

  @override
  String toString() {
    return r'similarMoviesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Movie>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Movie>> create(Ref ref) {
    final argument = this.argument as int;
    return similarMovies(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SimilarMoviesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$similarMoviesHash() => r'3d1be0e3d8ad300007159ce4e9f0054aa47ae8e4';

final class SimilarMoviesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Movie>>, int> {
  SimilarMoviesFamily._()
    : super(
        retry: null,
        name: r'similarMoviesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SimilarMoviesProvider call(int id) =>
      SimilarMoviesProvider._(argument: id, from: this);

  @override
  String toString() => r'similarMoviesProvider';
}

@ProviderFor(similarTv)
final similarTvProvider = SimilarTvFamily._();

final class SimilarTvProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<TvShow>>,
          List<TvShow>,
          FutureOr<List<TvShow>>
        >
    with $FutureModifier<List<TvShow>>, $FutureProvider<List<TvShow>> {
  SimilarTvProvider._({
    required SimilarTvFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'similarTvProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$similarTvHash();

  @override
  String toString() {
    return r'similarTvProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<TvShow>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<TvShow>> create(Ref ref) {
    final argument = this.argument as int;
    return similarTv(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SimilarTvProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$similarTvHash() => r'aff1a4076d97de2cf0b9dafd22136e17db4a231c';

final class SimilarTvFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<TvShow>>, int> {
  SimilarTvFamily._()
    : super(
        retry: null,
        name: r'similarTvProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SimilarTvProvider call(int id) =>
      SimilarTvProvider._(argument: id, from: this);

  @override
  String toString() => r'similarTvProvider';
}

@ProviderFor(seasonDetails)
final seasonDetailsProvider = SeasonDetailsFamily._();

final class SeasonDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Episode>>,
          List<Episode>,
          FutureOr<List<Episode>>
        >
    with $FutureModifier<List<Episode>>, $FutureProvider<List<Episode>> {
  SeasonDetailsProvider._({
    required SeasonDetailsFamily super.from,
    required (int, int) super.argument,
  }) : super(
         retry: null,
         name: r'seasonDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$seasonDetailsHash();

  @override
  String toString() {
    return r'seasonDetailsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<Episode>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Episode>> create(Ref ref) {
    final argument = this.argument as (int, int);
    return seasonDetails(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is SeasonDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$seasonDetailsHash() => r'e54b251177e974d8c6627a12cab1f91a63209236';

final class SeasonDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Episode>>, (int, int)> {
  SeasonDetailsFamily._()
    : super(
        retry: null,
        name: r'seasonDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SeasonDetailsProvider call(int tvId, int seasonNumber) =>
      SeasonDetailsProvider._(argument: (tvId, seasonNumber), from: this);

  @override
  String toString() => r'seasonDetailsProvider';
}
