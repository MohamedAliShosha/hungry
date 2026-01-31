import 'package:go_router/go_router.dart';
import 'package:hungry_app/features/auth/presentation/views/login_view.dart';
import 'package:hungry_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:hungry_app/features/splash/presentation/views/splash_view.dart';
import 'package:hungry_app/main_view.dart';

abstract class AppRouter {
  static const String kLoginView = '/loginView';
  static const String kSignupView = '/signupView';
  static const String kMainView = '/mainView';

  static final router = GoRouter(
    routes: [
      // Define your routes here
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kSignupView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kMainView,
        builder: (context, state) => const MainView(),
      ),
    ],
  );
}
