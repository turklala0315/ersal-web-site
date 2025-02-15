import 'dart:async';
import 'package:ersal_web_site/core/constatnt/string/string.dart';
import 'package:ersal_web_site/core/constatnt/text_style/text_style.dart';
import 'package:ersal_web_site/ui/screens/carrousel/carousel.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   super.initState();

  //   Timer(const Duration(seconds: 3), () {
  //     Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => const Carousel(),
  //         ));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //
          // images..
          //
          Image.asset('$staticAsset/splashscreen.png'),
          Positioned(
            bottom: 70,
            right: 50,
            left: 50,
            child: Column(
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  // leading
                  //
                  Text('Lörem ipsum dimöning\n      or sevis, dingen.',
                      style: style17),
                ]),
                //
                SizedBox(height: 90),
                //

                // loading circle
                //
                CircularProgressIndicator(
                  strokeWidth: 1.3,
                  backgroundColor: Colors.amberAccent,
                  strokeCap: StrokeCap.round,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
