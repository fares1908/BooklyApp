import 'package:bookly_app/features/Home/presentation/views/home_veiw.dart';
import 'package:bookly_app/features/Splash_veiw/presentation/splash_veiw.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const kHomeView='/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),

      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}