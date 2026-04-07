import 'package:flutter/material.dart';

import '../../../../../app/helpers/device_helpers.dart';
import '../blue_gesture_button.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: DeviceHelpers.getAppBarHeight(),
      right: 0,
      child: Padding(
        padding: const EdgeInsets.only(right: 36),
        child: BlueGestureButton(buttonName: "Skip", onTap: (){}),
      ),
    );
  }
}