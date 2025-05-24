import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:bookly_app/features/search/presentation/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/view/book_details_view.dart';
import '../../features/splash/splash_view.dart';

abstract class AppRouter {
  static const String homeView = '/homeView';
  static const String bookDetailsView = '/bookDetailsView';
  static const String searchView = '/searchView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: homeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return const BookDetailsView();
        },
      ),
      GoRoute(
        path: searchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}