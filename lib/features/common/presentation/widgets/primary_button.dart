import 'package:flutter/material.dart';
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.buttonName, required this.onTap});

  final String buttonName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 318,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white
        ),
        child: Text(buttonName, style: TextStyle(fontWeight: .w700, fontSize: 16),),
      ),
    );
  }
}
