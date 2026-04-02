import 'package:flutter/material.dart';

class SocialIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onPressed;

  const SocialIconButton({
    super.key,
    required this.iconPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isDark ? Colors.white : Colors.grey.shade300,
            width: 1.5,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(iconPath, width: 24, height: 24,),
          ),
        ),
      ),
    );
  }
}