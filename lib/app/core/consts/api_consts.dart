class ApiConst {
  static const apiKey = String.fromEnvironment('TMDB_API_KEY');
  static String fetchGenre() =>
      'https://api.themoviedb.org/3/genre/movie/list?api_key=$apiKey&language=en-US';
  static String moviesUpComming({int page = 1}) =>
      'https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey&language=en-US&page=$page';
  static String requestIMG(String img) =>
      'https://image.tmdb.org/t/p/w500/$img';
}
