import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/screens/sign_in_screen.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';

class Routers {
  BuildContext? context;
  static final GoRouter router = GoRouter(routes: [
    GoRoute(path: "/", builder: (context, state) => const SignInScreen()),
    GoRoute(path: "/splash", builder: (context, state) => const SplashScreen())
  ]);
}