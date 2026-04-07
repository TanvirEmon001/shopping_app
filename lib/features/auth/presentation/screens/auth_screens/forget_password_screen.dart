import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/app/constants/app_strings.dart';
import 'package:shopping_app/features/auth/presentation/widgets/title_subtitle_builder.dart';
import 'package:shopping_app/features/common/presentation/widgets/primary_button.dart';

import '../../../../../app/constants/route_paths.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(36),
        child: Column(
          children: [
            TitleSubtitleBuilder(
              title: AppStrings.forgetPasswordTitle,
              subtitle: AppStrings.forgetPasswordSubTitle,
              subtitleTextAlign: TextAlign.left,
            ),
            const SizedBox(height: 48,),
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
            const SizedBox(height: 24,),
            PrimaryButton(buttonName: AppStrings.submit, onTap: (){
              context.push(RoutePaths.emailSentScreen);
            })
            
          ],
        ),
      ),
    );
  }
}
