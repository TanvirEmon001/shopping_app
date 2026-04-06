import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/app/constants/asset_paths.dart';
import 'package:shopping_app/app/constants/app_strings.dart';
import 'package:shopping_app/app/constants/route_paths.dart';
import 'package:shopping_app/features/auth/presentation/widgets/divider_middle_text.dart';
import 'package:shopping_app/features/auth/presentation/widgets/social_icon_button.dart';
import 'package:shopping_app/features/auth/presentation/widgets/title_subtitle_builder.dart';
import 'package:shopping_app/features/common/presentation/widgets/primary_button.dart';
import 'package:shopping_app/features/common/presentation/widgets/secondary_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .start,
                mainAxisSize: .min,
                children: [
                  TitleSubtitleBuilder(
                    title: AppStrings.loginTitle,
                    subtitle: AppStrings.loginSubTitle,
                  ),

                  const SizedBox(height: 24),

                  TextField(
                    keyboardType: .emailAddress,
                    textInputAction: .next,
                    decoration: const InputDecoration(
                      hintText: AppStrings.email,
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.send),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xD9D9D900),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    keyboardType: .visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: AppStrings.password,
                      hintStyle: const TextStyle(color: Colors.black),
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.visibility_off),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xD9D9D900),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: true,
                          fillColor: WidgetStateProperty.resolveWith<Color>((
                            Set<WidgetState> states,
                          ) {
                            if (states.contains(WidgetState.disabled)) {
                              return Colors.orange.withValues(alpha: .32);
                            }
                            return Colors.blueAccent;
                          }),
                          onChanged: (checkValue) {},
                        ),
                        Text(
                          AppStrings.rememberMe,
                          style: TextStyle(fontWeight: .w400, fontSize: 12),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            context.push(RoutePaths.forgetPassScreen);
                          },
                          child: Text(
                            AppStrings.forgetPassword,
                            style: TextStyle(
                              fontWeight: .w400,
                              fontSize: 10,
                              color: Color(0xFF0857A0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  PrimaryButton(
                    buttonName: AppStrings.signIn,
                    onTap: () {
                      context.push(RoutePaths.createAccountScreen);
                    },
                  ),
                  const SizedBox(height: 8),
                  SecondaryButton(
                    buttonName: AppStrings.createAccount,
                    onTap: () {
                      context.push(RoutePaths.createAccountScreen);
                    },
                  ),
                  const SizedBox(height: 30),

                  DividerMiddleText(title: AppStrings.orSignInWith),

                  const SizedBox(height: 19),

                  Row(
                    spacing: 5,
                    mainAxisAlignment: .center,
                    children: [
                      SocialIconButton(
                        iconPath: AssetPaths.googleIcon,
                        onPressed: () {},
                      ),
                      SocialIconButton(
                        iconPath: AssetPaths.fbIcon,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
