import 'package:bookly/core/dependency%20injection/service_locator.dart';
import 'package:bookly/core/router/app_router_keys.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
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
      GoRoute(
        path: AppRouterKeys.bookDetails,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SimilarBooksCubit(homeRepo: getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: AppRouterKeys.search,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
