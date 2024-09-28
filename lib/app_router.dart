import 'package:go_router/go_router.dart';
import 'package:task14/screens/login_screen.dart';
import 'package:task14/screens/register_screen.dart';
import 'package:task14/screens/spalsh_one.dart';
import 'package:task14/screens/splash_three.dart';
import 'package:task14/screens/splash_two.dart';
import 'package:task14/screens/splash_zero.dart';

abstract class AppRouter {
  static const splachZero = '/splashZero';
  static const splachOne = '/splashOne';
  static const splachTwo = '/splashTwo';
  static const splachThree = '/splashThree';
  static const login = '/Login';
  static const register = '/register';

  static const test = '/test';

  static final routers = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashZero(),
    ),
    GoRoute(
      path: splachOne,
      builder: (context, state) => const SplashOne(),
    ),
    GoRoute(
      path: splachTwo,
      builder: (context, state) => const SplashTwo(),
    ),
    GoRoute(
      path: splachThree,
      builder: (context, state) => const SplashThree(),
    ),
    GoRoute(
      path: login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: register,
      builder: (context, state) => const RegisterScreen(),
    ),
  ]);
}
