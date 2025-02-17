import 'dart:core';
import 'dart:ui_web';

import 'package:ersal_web_site/core/constatnt/color/colors.dart';
import 'package:ersal_web_site/core/constatnt/string/string.dart';
import 'package:ersal_web_site/core/constatnt/text_style/text_style.dart';
import 'package:ersal_web_site/core/providers/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

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
  // final PageController = PageController(
  //   viewPortFraction: 0.8,
  //   keepPage: true,
  // );
  int activeindex = 0;
  @override
  Widget build(BuildContext context) {
    final Onboardingscreenprovider =
        Provider.of<OnboardingScreenProvider>(context);
    // return Scaffold(
    //   body: Stack(
    //     children: [
    //       PageView.builder(
    //         scrollDirection: Axis.horizontal,
    //         itemCount: onboardingData.length,
    //         controller: _pageController,
    //         itemBuilder: (context, index) {
    //           return Column(
    //             children: [
    //               // ✅ Full-Screen Image (No Overflow)
    //               Expanded(
    //                 flex: 6, // Takes most of the screen
    //                 child: Image.asset(
    //                   onboardingData[index]['image'],
    //                   width: double.infinity,
    //                   fit: BoxFit.cover, // Covers entire space
    //                 ),
    //               ),

    //               // ✅ Fixed Text Layout (No Scroll)
    //               Expanded(
    //                 flex: 2, // Takes remaining space
    //                 child: Padding(
    //                   padding: const EdgeInsets.symmetric(
    //                       horizontal: 20, vertical: 10),
    //                   child: Column(
    //                     mainAxisAlignment:
    //                         MainAxisAlignment.center, // Centers text
    //                     children: [
    //                       Text(
    //                         onboardingData[index]['title'],
    //                         style: style25,
    //                         textAlign: TextAlign.center,
    //                       ),
    //                       const SizedBox(height: 10),
    //                       Text(
    //                         onboardingData[index]['descreption'],
    //                         style: style14N,
    //                         textAlign: TextAlign.center,
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           );
    //         },
    //       ),
    //       Positioned(
    //         bottom: 30,
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
    //           children: [
    //             Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 20),
    //               child: Container(
    //                 height: 50,
    //                 width: 120,
    //                 decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(8),
    //                     color: mainyellowbutton),
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     Icon(
    //                       Icons.arrow_back,
    //                       color: Colors.white,
    //                     ),
    //                     Text(
    //                       'Back',
    //                       style: style14N,
    //                     ),
    //                     //
    //                     SizedBox(width: 160),
    //                     //
    //                     Container(
    //                       height: 50,
    //                       width: 120,
    //                       decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(8),
    //                           color: mainyellowbutton),
    //                       child: Row(
    //                         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                         children: [
    //                           Text(
    //                             'Next',
    //                             style: style14N,
    //                           ),
    //                           Icon(
    //                             Icons.arrow_forward,
    //                             color: Colors.white,
    //                           )
    //                         ],
    //                       ),
    //                     )
    //                   ],
    //                 ),
    //               ),
    //             )
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // );
    return Scaffold(
      body: Stack(
        children: [
          // Full-Screen PageView
          Positioned.fill(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: onboardingData.length,
              controller: _pageController,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    //  Full-Screen Image (No Overflow)
                    Expanded(
                      flex: 6, // Takes most of the screen
                      child: Image.asset(
                        onboardingData[index]['image'],
                        width: double.infinity,
                        fit: BoxFit.cover, // Covers entire space
                      ),
                    ),

                    //  Fixed Text Layout
                    Expanded(
                      flex: 2, // Takes remaining space
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Column(
                          mainAxisAlignment:
                              MainAxisAlignment.center, // Centers text
                          children: [
                            //
                            SizedBox(height: 400),
                            Text(
                              onboardingData[index]['title'],
                              style: style25,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              onboardingData[index]['descreption'],
                              style: style14N,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

          //  Navigation Buttons (On Top of PageView)
          Positioned(
            bottom: 50, // Adjust based on screen size
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //  Back Button
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainyellowbutton,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  onPressed: () {
                    if (_pageController.page! > 0) {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  label: Text('Back', style: style14N),
                ),

                //  Next Button
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainyellowbutton,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  onPressed: () {
                    if (_pageController.page! < onboardingData.length - 1) {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  icon: Text('Next', style: style14N),
                  label: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ],
            ),
          ),
          // SmoothPageIndicator(

          //     controller: PageController(initialPage: 0),
          //     count: onboardingData.length)
        ],
      ),
    );
  }
}
