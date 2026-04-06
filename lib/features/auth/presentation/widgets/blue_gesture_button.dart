import 'package:flutter/material.dart';

class BlueGestureButton extends StatelessWidget {
  const BlueGestureButton({super.key, required this.buttonName, required this.onTap});

  final String buttonName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        buttonName,
        style: TextStyle(
          fontWeight: .w400,
          fontSize: 12,
          color: Color(0xFF0857A0),
        ),
      ),
    );
  }
}
