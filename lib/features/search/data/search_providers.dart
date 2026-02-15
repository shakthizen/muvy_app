import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'search_repository.dart';

part 'search_providers.g.dart';

@riverpod
SearchRepository searchRepository(Ref ref) {
  return SearchRepository();
}

@riverpod
Future<List<dynamic>> searchResults(Ref ref, String query) {
  return ref.watch(searchRepositoryProvider).searchMulti(query);
}
