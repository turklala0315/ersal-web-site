import 'package:ersal_web_site/core/constatnt/color/colors.dart';
import 'package:ersal_web_site/core/constatnt/text_style/text_style.dart';
import 'package:flutter/material.dart';

class CustomSendNowButton extends StatelessWidget {
  final String text;
  final String imagepath;
  const CustomSendNowButton(
      {required this.text, required this.imagepath, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23,
      width: 94,
      decoration: BoxDecoration(
          color: mainyellowbutton, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
            Text(
              text,
              style: style12b,
            ),
            //
            SizedBox(width: 4),
            //
            Image.asset(
              imagepath,
              scale: 3,
            )
          ],
        ),
      ),
    );
  }
}
