import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trailx_app/const/colors.dart';
import 'package:trailx_app/screens/login/sign_up_survey.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 80, bottom: 30),
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                      color: loginTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      letterSpacing: 0.4,
                      fontFamily: 'RobotoMono'),
                ),
              ),
            ),
            Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: (MediaQuery.sizeOf(context).width - 60) / 2,
                  child: const TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                        ),
                        hintText: "First Name"),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                ),
                SizedBox(
                  width: (MediaQuery.sizeOf(context).width - 60) / 2,
                  child: const TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                        ),
                        hintText: "Last Name"),
                  ),
                ),
              ],
            )),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width - 35,
                child: const TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),
                      hintText: "Email Address"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width - 35,
                child: const TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),
                      hintText: "Username"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width - 35,
                child: const TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),
                      hintText: "Phone Number"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width - 35,
                child: const TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),
                      hintText: "Password"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width - 35,
                child: const TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),
                      hintText: "Re-Enter Password"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 26, bottom: 22),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width - 33,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 20),
                      backgroundColor: loginGreenColor,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const SignUpSurvey()));
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
            Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsetsDirectional.only(top: 10),
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
                          'or sign up with',
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
                      padding: EdgeInsetsDirectional.only(top: 10),
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
          ],
        ),
      ),
    );
  }
}
