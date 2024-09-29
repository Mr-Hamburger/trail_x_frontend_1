import 'package:flutter/material.dart';
import 'package:trailx_app/const/colors.dart';
import 'package:trailx_app/screens/login/login_password.dart';
import 'package:trailx_app/screens/login/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            Align(
              alignment: Alignment.topCenter,
              child: Center(
                child: Padding(
                  // ignore: prefer_const_constructors
                  padding: EdgeInsetsDirectional.only(top: 120),
                  child: Column(
                    children: [
                      Text(
                        "START YOUR JOURNEY",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            fontFamily: 'RobotoMono',
                            letterSpacing: 2,
                            wordSpacing: 3.5,
                            color: loginTextColor),
                      ),
                      Padding(
                        // ignore: prefer_const_constructors
                        padding: EdgeInsetsDirectional.only(top: 55),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Log In or ",
                              style: TextStyle(
                                  color: loginTextColor,
                                  fontFamily: 'RobotoMono',
                                  fontSize: 22,
                                  letterSpacing: 0.5,
                                  wordSpacing: 0.2,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: loginTextColor,
                                  fontFamily: 'RobotoMono',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        // ignore: prefer_const_constructors
                        padding: EdgeInsetsDirectional.symmetric(vertical: 14),
                        // ignore: prefer_const_constructors
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width - 55,
                          // ignore: prefer_const_constructors
                          child: TextField(
                            textAlign: TextAlign.left,
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 26, horizontal: 10),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                hintText: 'Email Address / Phone Number'),
                          ),
                        ),
                      ),
                      Padding(
                        // ignore: prefer_const_constructors
                        padding: const EdgeInsetsDirectional.only(
                            top: 18, bottom: 42),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width - 55,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                backgroundColor: loginGreenColor,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const SignUp()));
                            },
                            child: Text(
                              "Continue",
                              style: GoogleFonts.getFont(
                                'Inter',
                                textStyle: TextStyle(
                                  color: backgroundColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 23,
                                  letterSpacing: 0.6,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsetsDirectional.only(top: 40),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                              // ignore: prefer_const_constructors
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              child: const Divider()),
                        ),
                        Text(
                          'or continue with',
                          style: TextStyle(
                            color: loginSecondaryTextColor,
                          ),
                        ),
                        Expanded(
                          child: Container(
                              // ignore: prefer_const_constructors
                              margin: EdgeInsets.symmetric(horizontal: 25),
                              child: const Divider()),
                        )
                      ],
                    ),
                    Padding(
                      // ignore: prefer_const_constructors
                      padding: EdgeInsetsDirectional.only(top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/images/icon_apple_login.png',
                            width: 42,
                            height: 42,
                          ),
                          Image.asset(
                            'assets/images/icon_fb_login.png',
                            width: 42,
                            height: 42,
                          ),
                          Image.asset(
                            'assets/images/icon_google_login.png',
                            width: 42,
                            height: 42,
                          ),
                          Image.asset(
                            'assets/images/icon_github_login.png',
                            width: 42,
                            height: 42,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
          Image.asset(
            'assets/images/trailx_logo.png',
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}
