import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../../../app/constants/app_properties_sizes.dart';
import '../../../../../app/helpers/device_helpers.dart';

class OnBoardingPages extends StatelessWidget {
  const OnBoardingPages({
    super.key,
    required this.animation,
    required this.title,
    required this.subtitle,
  });

  final String animation;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: AppPropertiesSizes.defaultSpace,
        left: AppPropertiesSizes.defaultSpace,
        top: DeviceHelpers.getAppBarHeight(),
      ),
      child: Column(
        children: [
          Lottie.asset(animation),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(subtitle, textAlign: .center),
        ],
      ),
    );
  }
}
