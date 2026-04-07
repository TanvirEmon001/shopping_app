import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shopping_app/app/helpers/device_helpers.dart';
class OnboardingDotIndicator extends StatelessWidget {
  const OnboardingDotIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: DeviceHelpers.getBottomNavigationBarHeight() * 5.5,
      left: DeviceHelpers.getScreenWidth(context) / 2.5,
      right: DeviceHelpers.getScreenWidth(context) / 2.5,
      child: SmoothPageIndicator(
        controller: PageController(),
        count: 3,
        effect: const ExpandingDotsEffect(dotHeight: 6.0),
      ),
    );
  }
}