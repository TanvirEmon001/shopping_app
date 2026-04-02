import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/app/routers/routers.dart';
import 'package:shopping_app/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:shopping_app/features/splash/presentation/screens/splash_screen.dart';


class ShoppingApp extends StatelessWidget {
  ShoppingApp({super.key});

  @override
  Widget build(context){
    return MaterialApp.router(
      routerConfig: Routers.router
    );
  }

  final GoRouter _router = GoRouter(routes: [
    GoRoute(path: "/", builder: (context, state) => const SignInScreen()),
    GoRoute(path: "/splash", builder: (context, state) => const SplashScreen())
  ]);

}



