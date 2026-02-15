import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'TMDB_API_KEY', obfuscate: false)
  static final String tmdbApiKey = _Env.tmdbApiKey;
}
