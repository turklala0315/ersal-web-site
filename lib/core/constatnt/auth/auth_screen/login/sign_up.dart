import 'package:ersal_web_site/core/constatnt/auth/auth_screen/login/login_screen.dart';
import 'package:ersal_web_site/core/constatnt/color/colors.dart';
import 'package:ersal_web_site/core/constatnt/string/string.dart';
import 'package:ersal_web_site/core/constatnt/text_style/text_style.dart';
import 'package:ersal_web_site/ui/screens/home_page/home_page.dart';
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
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              SizedBox(height: 50),
              //
              Image.asset(
                '$staticAsset/signup.png',
                alignment: Alignment.topCenter,
                scale: 3,
              ),
              //
              SizedBox(height: 100),
              Text(
                'Welcome.',
                style: style24B,
              ),
              Text('Enter your personal information.'),
              //
              SizedBox(height: 50),
              //
              // Text Form Field start (user name)
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Phone number',
                    hintStyle: TextStyle(color: Color(0xff96979B)),
                    prefix: Icon(
                      Icons.person,
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
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)))),
              ),
              //
              SizedBox(height: 220),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already a member?',
                    style: TextStyle(color: Color(0xff96979B)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      'Log In here',
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
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
    );
  }
}
