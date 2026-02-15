import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/theme/app_theme.dart';
import 'router/app_router.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = AppRouter();

    return MaterialApp.router(
      title: 'muvy',
      theme: AppTheme.darkTheme,
      routerConfig: appRouter.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
