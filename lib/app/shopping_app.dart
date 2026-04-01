import 'package:flutter/material.dart';
import 'package:shopping_app/features/splash/presentation/screens/splash_screen.dart';

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(context){
    return MaterialApp(
      home: const SplashScreen(),
    );
  }

}
