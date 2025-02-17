import 'package:ersal_web_site/core/constatnt/auth/auth_screen/login/sign_up.dart';
import 'package:ersal_web_site/core/constatnt/color/colors.dart';
import 'package:ersal_web_site/core/constatnt/string/string.dart';
import 'package:ersal_web_site/core/constatnt/text_style/text_style.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset('$staticAsset/login.png'),
            //
            // Bottum sheet start
            Positioned(
              bottom: 0,
              child: Container(
                height: 401.55,
                width: 393,
                decoration: BoxDecoration(
                  color: Color(0xffF2F1F5),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome.',
                        style: style24B,
                      ),
                      Text(
                        'Enter your account information.',
                        style: style14,
                      ),
                      //
                      SizedBox(height: 20),
                      //
                      //
                      // Text form field ( number form)
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Phone number',
                            hintStyle: TextStyle(color: Color(0xff96979B)),
                            prefix: Icon(
                              Icons.call,
                              color: Color(0xfff96979B),
                            ),
                            border: InputBorder.none,
                            fillColor: Color(0xffFFFFFF),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)))),
                      ),
                      //
                      SizedBox(height: 3),
                      //
                      //
                      //Text Form Field ( code)
                      TextFormField(
                        enabled: true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20),
                            prefix: Icon(
                              Icons.lock,
                              color: Color(0xfff96979B),
                            ),
                            hintText: 'Code',
                            hintStyle: TextStyle(color: Color(0xfff96979B)),
                            border: InputBorder.none,
                            fillColor: Color(0xffFFFFFF),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)))),
                      ),
                      //
                      SizedBox(height: 50),
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Not a member yet? ',
                            style: TextStyle(color: Color(0xff96979B)),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Sign up here',
                              style: style14Brown,
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 42,
                        width: 345,
                        decoration: BoxDecoration(
                            color: mainbluekbutton,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            },
                            child: Text(
                              'Done',
                              style: style14B,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
