import 'package:flutter/material.dart';
import 'package:shopping_app/app/routers/routers.dart';



class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(context){
    return MaterialApp.router(
      routerConfig: Routers.router
    );
  }


}



