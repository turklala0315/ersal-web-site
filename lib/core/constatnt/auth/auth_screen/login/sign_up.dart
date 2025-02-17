import 'package:ersal_web_site/core/constatnt/string/string.dart';
import 'package:ersal_web_site/core/constatnt/text_style/text_style.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              '$staticAsset/signup.png',
              scale: 3,
            ),
            //
            SizedBox(height: 100),
            Text(
              'Welcome.',
              style: style24B,
            ),
          ],
        ),
      ),
    );
  }
}
