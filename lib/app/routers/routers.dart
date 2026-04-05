import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/app/routers/routes_list.dart';

class Routers {
  BuildContext? context;
  static final GoRouter router = GoRouter(routes: routes);
}