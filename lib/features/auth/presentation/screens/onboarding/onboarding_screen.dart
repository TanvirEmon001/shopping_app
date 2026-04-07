import 'package:flutter/material.dart';
import 'package:shopping_app/app/constants/animations_path.dart';

import 'package:shopping_app/app/constants/app_strings.dart';

import '../../widgets/onboarding/on_boarding_pages.dart';

import '../../widgets/onboarding/onboarding_dot_indicator.dart';
import '../../widgets/onboarding/onboarding_next_button.dart';
import '../../widgets/onboarding/onboarding_skip_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              OnBoardingPages(
                animation: AnimationsPath.onboardingAnim1,
                title: AppStrings.onBoardingTitle1,
                subtitle: AppStrings.onBoardingSubTitle1,
              ),

              OnBoardingPages(
                animation: AnimationsPath.onboardingAnim2,
                title: AppStrings.onBoardingTitle2,
                subtitle: AppStrings.onBoardingSubTitle2,
              ),

              OnBoardingPages(
                animation: AnimationsPath.onboardingAnim3,
                title: AppStrings.onBoardingTitle3,
                subtitle: AppStrings.onBoardingSubTitle3,
              ),
            ],
          ),

          const OnboardingDotIndicator(),

          const OnboardingNextButton(),

          const OnboardingSkipButton()

        ],
      ),
    );
  }
}




