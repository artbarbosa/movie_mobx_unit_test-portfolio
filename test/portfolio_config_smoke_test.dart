import '../lib/app/core/consts/api_consts.dart';

void main() {
  const expected = String.fromEnvironment('TMDB_API_KEY');
  if (ApiConst.apiKey != expected ||
      Uri.parse(ApiConst.fetchGenre()).queryParameters['api_key'] != expected ||
      Uri.parse(ApiConst.moviesUpComming(page: 2)).queryParameters['page'] != '2') {
    throw StateError('TMDB configuration or query contract changed.');
  }
  print('PASS: actual TMDB URL builder uses the supplied configuration.');
}
