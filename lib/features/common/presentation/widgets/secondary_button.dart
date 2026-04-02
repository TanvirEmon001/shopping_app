import 'package:flutter/material.dart';
class SecondaryButton extends StatelessWidget {
  const SecondaryButton({super.key, required this.buttonName, required this.onTap});

  final String buttonName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 318,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            foregroundColor: Colors.black
        ),
        child: Text(buttonName, style: TextStyle(fontWeight: .w700, fontSize: 16),),
      ),
    );
  }
}
