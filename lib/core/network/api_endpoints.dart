class ApiEndpoints {
  // TMDB
  static const String tmdbBaseUrl = 'https://api.themoviedb.org/3';
  static const String tmdbImageBase = 'https://image.tmdb.org/t/p/';

  static const String trending = '/trending/all/week';
  static const String popularMovies = '/movie/popular';
  static const String topRatedMovies = '/movie/top_rated';
  static const String upcomingMovies = '/movie/upcoming';
  
  static const String popularTv = '/tv/popular';
  static const String topRatedTv = '/tv/top_rated';
  
  static const String movieGenres = '/genre/movie/list';
  static const String tvGenres = '/genre/tv/list';
  
  static const String discoverMovie = '/discover/movie';
  static const String discoverTv = '/discover/tv';
  
  static const String searchMulti = '/search/multi';

  // VidSrc
  static const String vidSrcBaseUrl = 'https://vidsrc.to/embed';
  static String vidSrcMovie(int tmdbId) => '$vidSrcBaseUrl/movie/$tmdbId';
  static String vidSrcTv(int tmdbId, int season, int episode) => '$vidSrcBaseUrl/tv/$tmdbId/$season/$episode';
}
