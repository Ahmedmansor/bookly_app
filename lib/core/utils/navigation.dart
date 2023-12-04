import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class NavigationUtitils {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';

  // GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        // builder: (context, state) => const SplashView(),
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}