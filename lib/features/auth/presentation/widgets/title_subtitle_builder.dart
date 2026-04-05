import 'package:flutter/material.dart';


class TitleSubtitleBuilder extends StatelessWidget {
  const TitleSubtitleBuilder({super.key, required this.title, this.subtitle});
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
        ),
        if(subtitle != null)
          Text(
            subtitle!,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ),
          ),
      ],
    );
  }
}
