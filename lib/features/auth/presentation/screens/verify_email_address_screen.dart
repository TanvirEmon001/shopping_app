import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/app/constants/app_strings.dart';
import 'package:shopping_app/app/constants/asset_paths.dart';
import 'package:shopping_app/app/constants/route_paths.dart';
import 'package:shopping_app/features/auth/presentation/widgets/blue_gesture_button.dart';
import 'package:shopping_app/features/auth/presentation/widgets/title_subtitle_builder.dart';
import 'package:shopping_app/features/common/presentation/widgets/primary_button.dart';

class VerifyEmailAddressScreen extends StatefulWidget {
  const VerifyEmailAddressScreen({super.key});

  @override
  State<VerifyEmailAddressScreen> createState() => _VerifyEmailAddressScreenState();
}

class _VerifyEmailAddressScreenState extends State<VerifyEmailAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actionsPadding: EdgeInsets.only(right: 36),
        actions: [
          GestureDetector(
            onTap: (){
              context.pop();
            },
            child: Icon(Icons.close),
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset(AssetPaths.newMsgBg, width: 389, height: 295),

          Container(
            margin: const EdgeInsets.all(30),
            child: Column(
              children: [
                TitleSubtitleBuilder(
                  title: AppStrings.verifyEmailTitle,
                  titleBelowHeading: AppStrings.myEmail,
                  subtitle: AppStrings.verifyEmailSubTitle,
                  subtitleTextAlign: TextAlign.center,
                ),
                const SizedBox(height: 48,),

                PrimaryButton(buttonName: AppStrings.uContinue, onTap: (){
                  context.go(RoutePaths.accountCreatedSuccessScreen);
                }),
                const SizedBox(height: 16,),

                BlueGestureButton(buttonName: AppStrings.resendEmail, onTap: (){})
              ],
            ),
          ),
        ],
      ),
    );
  }
}
