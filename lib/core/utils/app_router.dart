// ignore_for_file: constant_identifier_names

import 'package:go_router/go_router.dart';
import 'package:my_bookly/Features/home/presentation/view/book_details_view.dart';
import 'package:my_bookly/Features/home/presentation/view/home_view.dart';

import '../../Features/Splash/presentation/view/splash_view.dart';

class RouterNames {
  static const HomeView = '/homeView';
  static const BookDetailsView = '/bookDetailsView';
}

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: RouterNames.HomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: RouterNames.BookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
