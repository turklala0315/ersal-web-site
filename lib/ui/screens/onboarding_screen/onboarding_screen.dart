import 'dart:core';

import 'package:ersal_web_site/core/constatnt/color/colors.dart';
import 'package:ersal_web_site/core/constatnt/string/string.dart';
import 'package:ersal_web_site/core/constatnt/text_style/text_style.dart';
import 'package:ersal_web_site/core/providers/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List onboardingData = [
    {
      "image": '$staticAsset/slider1.png',
      "title": 'Lörem ipsum ditisk tok alltså.',
      "descreption":
          'Lörem ipsum semil visor nesm, inte prejyment, till läslov, nevis. Vafasam multipåde, vikäre.',
    },
    {
      "image": '$staticAsset/slider2.png',
      "title": 'Lörem ipsum ditisk tok alltså.',
      "descreption":
          'Lörem ipsum semil visor nesm, inte prejyment, till läslov, nevis. Vafasam multipåde, vikäre.',
    },
    {
      "image": '$staticAsset/slider3.png',
      "title": 'Lörem ipsum ditisk tok alltså.',
      "descreption":
          'Lörem ipsum semil visor nesm, inte prejyment, till läslov, nevis. Vafasam multipåde, vikäre.'
    }
  ];
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final Onboardingscreenprovider =
        Provider.of<OnboardingScreenProvider>(context);
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: onboardingData.length,
                controller: _pageController,
                itemBuilder: (context, index) {
                  return Column(children: [
                    Image.asset(onboardingData[index]['image']),
                    //
                    SizedBox(height: 20),
                    //
                    Text(
                      onboardingData[index]['title'],
                      style: style25,
                    ),
                    //
                    SizedBox(height: 20),
                    //
                    Text(
                      onboardingData[index]['descreption'],
                      style: style25,
                    )
                  ]);
                }),
          ),
          Positioned(
            bottom: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: mainyellowbutton),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        Text(
                          'Back',
                          style: style14N,
                        ),
                        //
                        SizedBox(width: 160),
                        //
                        Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: mainyellowbutton),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              Text(
                                'Back',
                                style: style14N,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
