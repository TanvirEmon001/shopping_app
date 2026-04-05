import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/app/constants/route_paths.dart';

import '../../features/auth/presentation/screens/create_account_screen.dart';
import '../../features/auth/presentation/screens/sign_in_screen.dart';

List<RouteBase> routes = [
  GoRoute(path: RoutePaths.homeScreen, builder: routeBuilder[0]),
  GoRoute(path: RoutePaths.createAccountScreen, builder: routeBuilder[1]),
];

List<Widget Function(BuildContext, GoRouterState)?> routeBuilder = [
  (context, state) => const SignInScreen(),
  (context, state) => const CreateAccountScreen(),
];
