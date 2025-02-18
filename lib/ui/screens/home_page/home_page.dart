import 'package:ersal_web_site/core/constatnt/color/colors.dart';
import 'package:ersal_web_site/core/constatnt/string/string.dart';
import 'package:ersal_web_site/core/constatnt/text_style/text_style.dart';
import 'package:ersal_web_site/custom_widget/custom_send_now_button/custom_send_now_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          '$iconAssets/barlogo.png',
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none,
                  size: 30, color: Color(0xff1C1B1F))),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 30,
                color: Color(0xff1C1B1F),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Active shipments',
                    style: style16B,
                  ),
                  CustomSendNowButton(
                      text: 'send new',
                      imagepath: '$iconAssets/share_windows.png')
                ],
              ),
              //
              SizedBox(height: 30),
              //
              Container(
                height: 391,
                width: 345,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 1, vertical: 13),
                            child: Row(
                              children: [
                                // Image.asset(
                                //   '$staticAsset/Line1.png',
                                //   scale: 3,
                                // )
                              ],
                            ),
                          ),

                          //
                          SizedBox(width: 10),
                          //
                          Row(
                            children: [
                              Image.asset(
                                '$iconAssets/share_windows.png',
                                scale: 2.2,
                              ),
                              //
                              SizedBox(width: 3),
                              //
                              Text(
                                'DHL',
                                style: style16B,
                              ),
                              //
                              SizedBox(
                                width: 170,
                              ),
                              //

                              Container(
                                height: 23,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: mainyellowbutton,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 1.6),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Track',
                                        style: style12b,
                                      ),
                                      Icon(Icons.show_chart),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
