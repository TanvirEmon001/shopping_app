import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/app/constants/asset_paths.dart';
import 'package:shopping_app/app/constants/app_strings.dart';
import 'package:shopping_app/features/auth/presentation/widgets/divider_middle_text.dart';
import 'package:shopping_app/features/auth/presentation/widgets/social_icon_button.dart';
import 'package:shopping_app/features/common/presentation/widgets/primary_button.dart';

import '../../../../../app/theme/color_theme.dart';
import '../../widgets/title_subtitle_builder.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: .center,
              crossAxisAlignment: .start,
              mainAxisSize: .min,
              children: [

                TitleSubtitleBuilder(title: AppStrings.signupTitle,),

                const SizedBox(height: 24),

                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: .text,
                        textInputAction: .next,
                        decoration: const InputDecoration(
                          labelText: AppStrings.firstName,
                          hintText: AppStrings.firstName,
                          prefixIcon: Icon(Icons.person_rounded),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xD9D9D900),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: TextField(
                        keyboardType: .emailAddress,
                        textInputAction: .next,
                        decoration: const InputDecoration(
                          labelText: AppStrings.lastName,
                          hintText: AppStrings.lastName,
                          hintStyle: TextStyle(color: Colors.black),
                          prefixIcon: Icon(Icons.person_rounded),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xD9D9D900),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

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
                  keyboardType: .phone,
                  textInputAction: .next,
                  decoration: const InputDecoration(
                    hintText: AppStrings.phoneNumber,
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.phone_outlined),
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

                Row(
                  mainAxisAlignment: .start,
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
                    RichText(
                      text: TextSpan(
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium!.copyWith(fontSize: 12),
                        text: "${AppStrings.iAgreeTo} ",
                        children: [
                          TextSpan(
                            style: TextStyle(
                              color: ColorTheme.primary,
                              fontWeight: .bold,
                            ),
                            text: AppStrings.privacyPolicy,
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                          TextSpan(
                            text: " ${AppStrings.and} ",
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                          TextSpan(
                            style: TextStyle(
                              color: ColorTheme.primary,
                              fontWeight: .bold,
                            ),
                            text: AppStrings.termsOfUse,
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                PrimaryButton(
                  buttonName: AppStrings.createAccount,
                  onTap: () {},
                ),
                const SizedBox(height: 28),

                DividerMiddleText(title: AppStrings.orSignupWith),

                const SizedBox(height: 17),

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
    );
  }
}
