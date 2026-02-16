import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: DiscoverRoute.page),
    AutoRoute(page: SearchRoute.page),
    AutoRoute(page: MovieDetailsRoute.page, path: '/movie/:id'),
    AutoRoute(page: TvDetailsRoute.page, path: '/tv/:id'),
  ];
}
