import 'package:flutter/material.dart';
import 'package:shopping_app/app/helpers/ui_utils_helpers.dart';

import '../../../../app/theme/color_theme.dart';

class DividerMiddleText extends StatelessWidget {
  const DividerMiddleText({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final dark = UiUtilsHelpers.isDarkMode(context);
    return Row(
      children: [
        Expanded(child: Divider(indent: 60, endIndent: 5, thickness: 0.5, color: dark ? ColorTheme.darkGrey : ColorTheme.grey)),
        Text(title, style: Theme.of(context).textTheme.labelMedium),
        Expanded(child: Divider(indent: 5, endIndent: 60, thickness: 0.5,  color: dark ? ColorTheme.darkGrey : ColorTheme.grey)),
      ],
    );
  }


}
