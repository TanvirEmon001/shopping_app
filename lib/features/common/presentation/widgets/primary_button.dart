import 'package:flutter/material.dart';
import 'package:shopping_app/app/helpers/device_helpers.dart';
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.buttonName, required this.onTap});

  final String buttonName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: DeviceHelpers.getScreenWidth(context),
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
