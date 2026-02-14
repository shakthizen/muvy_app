# muvy — App Architecture Guide

![muvy icon](assets/muvy_icon.png)

## Overview

**muvy** is a movie streaming app built with Flutter. It uses TMDB for movie/TV catalog data and VidSrc for video streams. The app features a dark, glowy, glassmorphic UI inspired by the muvy icon's purple-to-pink gradient palette.

---

## Design System

### Color Palette (derived from icon)

| Token                | Hex         | Usage                                    |
| -------------------- | ----------- | ---------------------------------------- |
| `backgroundDark`     | `#0A0A0F`   | Scaffold / page backgrounds              |
| `surfaceDark`        | `#12121A`   | Cards, sheets, bottom nav                |
| `surfaceGlass`       | `#1A1A2E`   | Glassmorphic containers (with opacity)   |
| `purplePrimary`      | `#8B5CF6`   | Primary buttons, active states, accents  |
| `purpleLight`        | `#A78BFA`   | Hover / lighter accent                   |
| `purpleDeep`         | `#6D28D9`   | Deeper accent, gradients                 |
| `pinkAccent`         | `#EC4899`   | Secondary accent, play buttons, badges   |
| `redAccent`          | `#EF4444`   | Errors, destructive actions              |
| `gradientPrimary`    | `#8B5CF6 → #EC4899` | Icon gradient, hero sections    |
| `gradientGlow`       | `#A78BFA → #F472B6` | Glow effects, focus rings       |
| `textPrimary`        | `#F1F5F9`   | Primary text                             |
| `textSecondary`      | `#94A3B8`   | Subtitles, metadata                      |
| `textMuted`          | `#64748B`   | Disabled, placeholder                    |

### Typography

- **Font Family**: `Inter` (via Google Fonts)
- Headings: `600–700` weight
- Body: `400` weight
- Captions: `300–400` weight

### Glassmorphism Recipe

```dart
Container(
  decoration: BoxDecoration(
    color: AppColors.surfaceGlass.withValues(alpha: 0.6),
    borderRadius: BorderRadius.circular(16),
    border: Border.all(
      color: AppColors.purplePrimary.withValues(alpha: 0.15),
      width: 1,
    ),
    boxShadow: [
      BoxShadow(
        color: AppColors.purplePrimary.withValues(alpha: 0.08),
        blurRadius: 24,
        spreadRadius: 0,
      ),
    ],
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(16),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
      child: content,
    ),
  ),
)
```

### Glow Effect

```dart
BoxShadow(
  color: AppColors.purplePrimary.withValues(alpha: 0.3),
  blurRadius: 20,
  spreadRadius: 2,
)
```

---

## Folder Structure

```
lib/
├── main.dart
├── app.dart                          # MaterialApp.router + theme
├── env/
│   └── env.dart                      # Envied: TMDB API key
│   └── env.g.dart                    # Generated
│
├── core/
│   ├── theme/
│   │   ├── app_colors.dart           # Color tokens
│   │   ├── app_theme.dart            # ThemeData builder
│   │   └── app_text_styles.dart      # TextStyle presets
│   ├── network/
│   │   ├── dio_client.dart           # Dio singleton + interceptors
│   │   └── api_endpoints.dart        # TMDB & VidSrc endpoints
│   ├── widgets/
│   │   ├── glass_container.dart      # Glassmorphic container widget
│   │   ├── glow_button.dart          # Glowing CTA button
│   │   ├── gradient_text.dart        # Gradient shader text
│   │   ├── shimmer_loading.dart      # Shimmer placeholder
│   │   ├── cached_poster.dart        # CachedNetworkImage for posters
│   │   └── error_view.dart           # Retry error widget
│   ├── constants/
│   │   └── app_constants.dart        # TMDB image base URLs, etc.
│   └── utils/
│       ├── extensions.dart           # Context extensions, formatters
│       └── debouncer.dart            # Search debouncer
│
├── router/
│   ├── app_router.dart               # @AutoRouterConfig
│   ├── app_router.gr.dart            # Generated
│   └── auth_guard.dart               # Route guard (future use)
│
├── features/
│   ├── home/
│   │   ├── presentation/
│   │   │   ├── home_page.dart        # Scaffold + BottomNav shell
│   │   │   └── widgets/
│   │   │       ├── featured_carousel.dart
│   │   │       ├── movie_section.dart
│   │   │       └── movie_card.dart
│   │   └── data/
│   │       ├── home_repository.dart
│   │       └── models/
│   │           └── movie.dart
│   │
│   ├── discover/
│   │   ├── presentation/
│   │   │   ├── discover_page.dart    # Browse by genre/filter
│   │   │   └── widgets/
│   │   │       ├── genre_chip.dart
│   │   │       └── filter_sheet.dart
│   │   └── data/
│   │       ├── discover_repository.dart
│   │       └── models/
│   │           └── genre.dart
│   │
│   ├── search/
│   │   ├── presentation/
│   │   │   ├── search_page.dart
│   │   │   └── widgets/
│   │   │       └── search_result_tile.dart
│   │   └── data/
│   │       └── search_repository.dart
│   │
│   ├── details/
│   │   ├── presentation/
│   │   │   ├── movie_detail_page.dart
│   │   │   ├── tv_detail_page.dart
│   │   │   └── widgets/
│   │   │       ├── backdrop_header.dart
│   │   │       ├── cast_list.dart
│   │   │       ├── info_chips.dart
│   │   │       ├── season_selector.dart
│   │   │       └── similar_section.dart
│   │   └── data/
│   │       ├── detail_repository.dart
│   │       └── models/
│   │           ├── movie_detail.dart
│   │           ├── tv_detail.dart
│   │           ├── cast.dart
│   │           └── season.dart
│   │
│   ├── player/
│   │   ├── presentation/
│   │   │   ├── player_page.dart      # Chewie player + VidSrc WebView
│   │   │   └── widgets/
│   │   │       ├── player_controls.dart
│   │   │       ├── episode_selector.dart
│   │   │       └── source_selector.dart
│   │   └── data/
│   │       ├── stream_repository.dart
│   │       └── models/
│   │           └── stream_source.dart
│   │
│   └── favorites/
│       ├── presentation/
│       │   ├── favorites_page.dart
│       │   └── widgets/
│       │       └── favorite_tile.dart
│       └── data/
│           └── favorites_repository.dart  # Local storage (Hive/SharedPrefs)
│
└── shared/
    ├── models/
    │   └── media_item.dart           # Shared movie/TV model
    └── providers/
        └── favorites_provider.dart   # ChangeNotifier or Riverpod
```

---

## Packages

### Dependencies

| Package                  | Purpose                                     |
| ------------------------ | ------------------------------------------- |
| `dio`                    | HTTP client for TMDB API calls              |
| `auto_route`             | Declarative routing with code generation     |
| `chewie`                 | Material video player wrapping video_player  |
| `video_player`           | Platform video playback (chewie dependency)  |
| `webview_flutter`        | WebView for VidSrc embed streams            |
| `cached_network_image`   | Poster/backdrop caching                     |
| `flutter_riverpod`       | State management                            |
| `envied`                 | Compile-time env variable injection          |
| `shimmer`                | Loading placeholder effects                 |
| `google_fonts`           | Inter font family                           |
| `hive_flutter`           | Local storage for favorites/watchlist        |

### Dev Dependencies

| Package                            | Purpose                          |
| ---------------------------------- | -------------------------------- |
| `auto_route_generator`             | Code gen for auto_route          |
| `build_runner`                     | Dart code generation runner      |
| `envied_generator`                 | Code gen for envied              |
| `flutter_launcher_icons`           | Already added                    |
| `flutter_native_splash`            | Already added                    |
| `change_app_package_name`          | Already added                    |

---

## Environment Variables

Use the [`envied`](https://pub.dev/packages/envied) package for compile-time env variable injection. API keys are **not** committed to source control.

### Setup

1. Create `.env` at project root:
```env
TMDB_API_KEY=your_tmdb_api_key_here
```

2. Add `.env` & `env.g.dart` to `.gitignore`.

3. Define the env class:
```dart
// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'TMDB_API_KEY', obfuscate: true)
  static String tmdbApiKey = _Env.tmdbApiKey;
}
```

4. Generate: `dart run build_runner build --delete-conflicting-outputs`

---

## API Integration

### TMDB API

Base URL: `https://api.themoviedb.org/3`
Image Base: `https://image.tmdb.org/t/p/`

#### Key Endpoints

| Endpoint                              | Usage                    |
| ------------------------------------- | ------------------------ |
| `GET /trending/all/week`              | Home featured carousel   |
| `GET /movie/popular`                  | Popular movies section   |
| `GET /movie/top_rated`                | Top rated section        |
| `GET /movie/upcoming`                 | Upcoming section         |
| `GET /tv/popular`                     | Popular TV shows         |
| `GET /tv/top_rated`                   | Top rated TV             |
| `GET /genre/movie/list`               | Genre filter chips       |
| `GET /genre/tv/list`                  | TV genre chips           |
| `GET /discover/movie`                 | Discover with filters    |
| `GET /discover/tv`                    | Discover TV with filters |
| `GET /search/multi`                   | Search movies + TV       |
| `GET /movie/{id}`                     | Movie details            |
| `GET /tv/{id}`                        | TV details               |
| `GET /movie/{id}/credits`             | Cast & crew              |
| `GET /tv/{id}/credits`                | TV cast & crew           |
| `GET /movie/{id}/similar`             | Similar movies           |
| `GET /tv/{id}/similar`                | Similar TV               |
| `GET /tv/{id}/season/{season_number}` | Season episodes          |

#### Dio Client Setup

```dart
// lib/core/network/dio_client.dart
final dio = Dio(BaseOptions(
  baseUrl: 'https://api.themoviedb.org/3',
  queryParameters: {
    'api_key': Env.tmdbApiKey,
    'language': 'en-US',
  },
  connectTimeout: const Duration(seconds: 10),
  receiveTimeout: const Duration(seconds: 10),
));
```

#### Image Sizes

| Use Case    | Size     | Example                                              |
| ----------- | -------- | ---------------------------------------------------- |
| Poster      | `w342`   | `https://image.tmdb.org/t/p/w342/poster_path.jpg`   |
| Poster HD   | `w500`   | `https://image.tmdb.org/t/p/w500/poster_path.jpg`   |
| Backdrop    | `w780`   | `https://image.tmdb.org/t/p/w780/backdrop_path.jpg`  |
| Backdrop HD | `w1280`  | `https://image.tmdb.org/t/p/w1280/backdrop_path.jpg` |
| Profile     | `w185`   | `https://image.tmdb.org/t/p/w185/profile_path.jpg`   |

### VidSrc Streaming

VidSrc provides embeddable video streams. Load via **WebView**.

#### Endpoints

| Media Type | URL Pattern                                            |
| ---------- | ------------------------------------------------------ |
| Movie      | `https://vidsrc.to/embed/movie/{tmdb_id}`              |
| TV Episode | `https://vidsrc.to/embed/tv/{tmdb_id}/{season}/{episode}` |

#### Implementation Strategy

- Use `webview_flutter` to embed VidSrc URLs
- Wrap in a full-screen page with back navigation
- Fallback: If WebView fails, show error with retry button
- **Chewie** is available as an alternative if direct stream URLs can be extracted

---

## Routing (auto_route)

### Configuration

```dart
// lib/router/app_router.dart
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: HomeRoute.page,
      initial: true,
      children: [
        AutoRoute(page: HomeFeedRoute.page),
        AutoRoute(page: DiscoverRoute.page),
        AutoRoute(page: SearchRoute.page),
        AutoRoute(page: FavoritesRoute.page),
      ],
    ),
    AutoRoute(page: MovieDetailRoute.page),
    AutoRoute(page: TvDetailRoute.page),
    CustomRoute(
      page: PlayerRoute.page,
      fullscreenDialog: true,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ];
}
```

### Navigation Pattern

```
HomeRoute (BottomNav shell)
├── HomeFeedRoute    — 🏠 Home tab
├── DiscoverRoute    — 🔍 Discover tab
├── SearchRoute      — 🔎 Search tab
└── FavoritesRoute   — ❤️ Favorites tab

MovieDetailRoute     — pushed on top
TvDetailRoute        — pushed on top
PlayerRoute          — fullscreen dialog
```

---

## Pages & UX

### 1. Home Page (`HomeFeedRoute`)

- **Featured Carousel**: Full-width backdrop cards with gradient overlay, title, rating. Auto-scrolls.
- **Sections**: Horizontal scrollable rows:
  - 🔥 Trending Now
  - 🎬 Popular Movies
  - 📺 Popular TV Shows
  - ⭐ Top Rated
  - 🆕 Upcoming
- Each row: poster cards with glassmorphic overlay at bottom (title + rating)

### 2. Discover Page (`DiscoverRoute`)

- **Genre Chips**: Horizontal scrolling genre chips with glow on selection
- **Grid View**: 2-column masonry/grid of posters
- **Filter Sheet**: Bottom sheet with sort options (popularity, rating, release date)

### 3. Search Page (`SearchRoute`)

- **Search Bar**: Glassmorphic search input with purple focus glow
- **Live Results**: Debounced search (300ms) → grid/list of results
- **Empty State**: Trending suggestions as chips

### 4. Movie/TV Detail Page

- **Backdrop Header**: Full-width fading backdrop with gradient to dark
- **Info Section**: Title, year, runtime, rating (with glow star), genres as chips
- **Play Button**: Large glowing gradient CTA → opens PlayerRoute
- **Cast Carousel**: Horizontal cast avatars with names
- **Seasons** (TV only): Dropdown or tab selector → episode list
- **Similar Section**: Horizontal row of similar titles

### 5. Player Page (`PlayerRoute`)

- **WebView**: Full-screen VidSrc embed
- **Controls Overlay**: Back button, source selector (if multiple)
- **Episode Selector** (TV): Bottom sheet to switch episodes

### 6. Favorites Page (`FavoritesRoute`)

- **Saved Items**: Grid of favorited movies/TV shows
- **Empty State**: Centered icon + message
- Local storage via Hive

---

## Bottom Navigation Bar

Glassmorphic bottom nav with 4 tabs:

| Index | Icon                    | Label      | Route         |
| ----- | ----------------------- | ---------- | ------------- |
| 0     | `Icons.home_rounded`    | Home       | HomeFeedRoute |
| 1     | `Icons.explore_rounded` | Discover   | DiscoverRoute |
| 2     | `Icons.search_rounded`  | Search     | SearchRoute   |
| 3     | `Icons.favorite_rounded`| Favorites  | FavoritesRoute|

- Active: purple icon + glow dot indicator
- Inactive: muted gray icons
- Background: glassmorphic dark surface

---

## State Management

Using **Riverpod** for state:

```
Provider        → Dio client, repositories
FutureProvider  → API calls (trending, popular, etc.)
StateProvider   → Filters, search query
NotifierProvider → Favorites list (backed by Hive)
```

---

## Implementation Phases

### Phase 1 — Foundation
- [x] Project setup, rename, icons, splash
- [ ] Add all packages to pubspec.yaml
- [ ] Set up env with envied
- [ ] Create theme system (colors, text styles, theme data)
- [ ] Set up Dio client
- [ ] Set up auto_route with shell route
- [ ] Create core widgets (GlassContainer, GlowButton, etc.)

### Phase 2 — Home & Catalog
- [ ] TMDB models (Movie, TvShow, Genre, Cast, etc.)
- [ ] Home repository + providers
- [ ] Home page with featured carousel + sections
- [ ] Movie card widget

### Phase 3 — Discovery & Search
- [ ] Discover page with genre chips + grid
- [ ] Search page with debounced input
- [ ] Filter bottom sheet

### Phase 4 — Details
- [ ] Movie detail page
- [ ] TV detail page with season/episode support
- [ ] Cast list, similar section

### Phase 5 — Player
- [ ] WebView-based VidSrc player page
- [ ] Episode selector for TV
- [ ] Source selector fallback

### Phase 6 — Favorites & Polish
- [ ] Hive setup for local favorites
- [ ] Favorites page
- [ ] Animations, transitions, micro-interactions
- [ ] Error handling, empty states, loading shimmers
- [ ] Performance review

---

## Key Design Principles

1. **Dark-first**: Every surface uses dark backgrounds. No white.
2. **Glassmorphism**: Cards, sheets, nav bars use frosted glass effect.
3. **Glow accents**: Purple/pink glow on interactive elements (buttons, selected chips, active nav items).
4. **Gradient touches**: Gradient text for headings, gradient overlays on backdrops.
5. **Smooth motion**: Page transitions use fade/slide. Cards have scale-on-tap. Carousels auto-scroll.
6. **Consistent spacing**: 8px grid system. 16px page padding. 12px card gaps.
