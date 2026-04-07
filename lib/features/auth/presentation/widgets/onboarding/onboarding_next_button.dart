import 'package:flutter/material.dart';

import '../../../../../app/constants/app_properties_sizes.dart';
import '../../../../../app/constants/app_strings.dart';
import '../../../../common/presentation/widgets/primary_button.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: AppPropertiesSizes.spaceBtwItems * 2.3125,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 37, vertical: 37),
        child: PrimaryButton(buttonName: AppStrings.next, onTap: () {}),
      ),
    );
  }
}