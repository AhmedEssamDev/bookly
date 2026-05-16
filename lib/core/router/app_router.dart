import 'package:bookly/core/router/app_router_keys.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: AppRouterKeys.splash,
      builder: (context, state) => const SplashView(),
      ),
      GoRoute(
      path: AppRouterKeys.home,
      builder: (context, state) => const HomeView(),
      ),
  ],
);
}
