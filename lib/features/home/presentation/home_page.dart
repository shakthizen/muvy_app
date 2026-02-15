import 'package:auto_route/auto_route.dart';
import '../../../../router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muvy/features/home/data/home_providers.dart';
import 'widgets/featured_carousel.dart';
import 'widgets/horizontal_list.dart';
import 'widgets/section_header.dart';
import '../../../../core/theme/app_text_styles.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch providers
    final trendingMovies = ref.watch(trendingMoviesProvider);
    final popularMovies = ref.watch(popularMoviesProvider);
    final topRatedMovies = ref.watch(topRatedMoviesProvider);
    final popularTv = ref.watch(popularTvProvider);
    final topRatedTv = ref.watch(topRatedTvProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'muvy',
          style: AppTextStyles.headlineMedium.copyWith(color: Colors.red),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () => context.pushRoute(const SearchRoute()),
            icon: const Icon(Icons.search),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          // Featured Carousel (Trending)
          SliverToBoxAdapter(
            child: trendingMovies.when(
              data: (movies) => FeaturedCarousel(movies: movies),
              loading: () => const SizedBox(
                height: 450,
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (err, stack) => SizedBox(
                height: 450,
                child: Center(child: Text('Error: $err')),
              ),
            ),
          ),

          // Popular Movies
          SliverToBoxAdapter(
            child: SectionHeader(
              title: 'Popular Movies',
              onSeeAll: () => context.pushRoute(const DiscoverRoute()),
            ),
          ),
          SliverToBoxAdapter(
            child: popularMovies.when(
              data: (movies) => HorizontalList(
                items: movies,
                onItemTap: (movie) {}, // Navigate to detail
              ),
              loading: () => const SizedBox(
                height: 220,
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (err, stack) => Text('Error: $err'),
            ),
          ),

          // Top Rated Movies
          SliverToBoxAdapter(
            child: SectionHeader(
              title: 'Top Rated Movies',
              onSeeAll: () => context.pushRoute(const DiscoverRoute()),
            ),
          ),
          SliverToBoxAdapter(
            child: topRatedMovies.when(
              data: (movies) =>
                  HorizontalList(items: movies, onItemTap: (movie) {}),
              loading: () => const SizedBox(
                height: 220,
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (err, stack) => Text('Error: $err'),
            ),
          ),

          // Popular TV
          SliverToBoxAdapter(
            child: SectionHeader(
              title: 'Popular TV Shows',
              onSeeAll: () => context.pushRoute(const DiscoverRoute()),
            ),
          ),
          SliverToBoxAdapter(
            child: popularTv.when(
              data: (shows) =>
                  HorizontalList(items: shows, onItemTap: (show) {}),
              loading: () => const SizedBox(
                height: 220,
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (err, stack) => Text('Error: $err'),
            ),
          ),

          // Top Rated TV
          SliverToBoxAdapter(
            child: SectionHeader(
              title: 'Top Rated TV Shows',
              onSeeAll: () => context.pushRoute(const DiscoverRoute()),
            ),
          ),
          SliverToBoxAdapter(
            child: topRatedTv.when(
              data: (shows) =>
                  HorizontalList(items: shows, onItemTap: (show) {}),
              loading: () => const SizedBox(
                height: 220,
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (err, stack) => Text('Error: $err'),
            ),
          ),
          
          const SliverToBoxAdapter(child: SizedBox(height: 50)),
        ],
      ),
    );
  }
}

