import 'package:flutter/material.dart';
import 'package:shopping_app/app/constants/asset_paths.dart';
import 'package:shopping_app/app/constants/app_strings.dart';
import 'package:shopping_app/features/auth/presentation/widgets/social_icon_button.dart';
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
                  Text(
                    AppStrings.loginTitle,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    AppStrings.loginSubTitle,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 20),

                  TextField(
                    keyboardType: .emailAddress,
                    textInputAction: .next,
                    decoration: const InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.send),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xD9D9D900)),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    keyboardType: .visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: const TextStyle(color: Colors.black),
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.visibility_off),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xD9D9D900)),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),

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
                          onTap: () {},
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

                  PrimaryButton(buttonName: AppStrings.signIn, onTap: () {}),
                  const SizedBox(height: 10),
                  SecondaryButton(buttonName: AppStrings.createAccount, onTap: () {}),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Row(
                      spacing: 5,
                      children: [
                        Container(height: 1, width: 70, decoration: BoxDecoration(color: Color(0xFFD9D9D9))),
                        Text(AppStrings.orSignInWith, style: TextStyle(fontWeight: .w400, fontSize: 12, color: Color(0xFFBEBEBE)),),
                        Container(height: 1, width: 70, decoration: BoxDecoration(color: Color(0xFFD9D9D9))),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10,),

                  Row(
                    spacing: 5,
                    mainAxisAlignment: .center,
                    children: [
                      SocialIconButton(iconPath: AssetPaths.googleIcon, onPressed: (){}),
                      SocialIconButton(iconPath: AssetPaths.fbIcon, onPressed: (){}),
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
