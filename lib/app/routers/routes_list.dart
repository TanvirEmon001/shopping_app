import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/app/constants/route_paths.dart';
import 'package:shopping_app/features/auth/presentation/screens/forget_password_screen.dart';
import 'package:shopping_app/features/auth/presentation/screens/sent_email_success_screen.dart';
import 'package:shopping_app/features/auth/presentation/screens/verify_email_address_screen.dart';

import '../../features/auth/presentation/screens/create_account_screen.dart';
import '../../features/auth/presentation/screens/sign_in_screen.dart';


final routes = <RouteBase>[
  GoRoute(path: RoutePaths.homeScreen, builder: routeBuilder[0]),
  GoRoute(path: RoutePaths.createAccountScreen, builder: routeBuilder[1]),
  GoRoute(path: RoutePaths.forgetPassScreen, builder: routeBuilder[2]),
  GoRoute(path: RoutePaths.emailSentScreen, builder: routeBuilder[3]),
  GoRoute(path: RoutePaths.verifyEmailScreen, builder: routeBuilder[4]),
];

final routeBuilder = <Widget Function(BuildContext, GoRouterState)?>[
  (context, state) => const SignInScreen(),
  (context, state) => const CreateAccountScreen(),
  (context, state) => const ForgetPasswordScreen(),
  (context, state) => const SentEmailSuccessScreen(),
  (context, state) => const VerifyEmailAddressScreen(),
];
