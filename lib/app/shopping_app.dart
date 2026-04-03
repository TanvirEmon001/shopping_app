import 'package:flutter/material.dart';
import 'package:shopping_app/app/theme/app_theme.dart';
import 'package:shopping_app/app/routers/routers.dart';



class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(context){
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: Routers.router,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      themeMode: .light,
    );
  }


}



