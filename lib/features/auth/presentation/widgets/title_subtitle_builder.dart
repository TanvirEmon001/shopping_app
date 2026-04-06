import 'package:flutter/material.dart';

class TitleSubtitleBuilder extends StatelessWidget {
  const TitleSubtitleBuilder({
    super.key,
    required this.title,
    this.subtitle,
    this.subtitleTextAlign,
    this.titleBelowHeading
  });
  final String title;
  final String? titleBelowHeading;
  final String? subtitle;
  final TextAlign? subtitleTextAlign;

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

        if(titleBelowHeading != null)
          const SizedBox(height: 8,),

        if(titleBelowHeading != null)
          Row(
            mainAxisAlignment: .center,
            children: [
              Text(
                titleBelowHeading!,
                style: TextStyle(fontWeight: .w400, fontSize: 14),
              ),
            ],
          ),

        if(titleBelowHeading != null)
          const SizedBox(height: 8,),

        if (subtitle != null && subtitleTextAlign != null)
          Text(
            subtitle!,
            textAlign: subtitleTextAlign,
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
