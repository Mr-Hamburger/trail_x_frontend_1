import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trailx_app/const/colors.dart';
import 'package:trailx_app/main_navigation.dart';

class SignUpFinal extends StatefulWidget {
  const SignUpFinal({super.key});

  @override
  _SignUpFinal createState() => _SignUpFinal();
}

class _SignUpFinal extends State<SignUpFinal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Text(
                'Congrats Taylor!',
                style: GoogleFonts.getFont('Inter',
                    textStyle: TextStyle(
                      color: loginGreenColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      letterSpacing: 0.4,
                    )),
              ),
            ),
            Center(
              child: Text(
                'Your Avatar is Complete!',
                style: GoogleFonts.getFont('Inter',
                    textStyle: TextStyle(
                      color: loginTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      letterSpacing: 0.6,
                    )),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset('assets/images/avatar_complete.png'),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: SwipeButton(
                      thumb: Icon(
                        Icons.double_arrow,
                        color: backgroundColor,
                      ),
                      activeThumbColor: loginGreenColor,
                      activeTrackColor: loginGreenColor,
                      inactiveThumbColor: backgroundColor,
                      inactiveTrackColor: backgroundColor,
                      width: MediaQuery.sizeOf(context).width - 60,
                      height: 75,
                      child: Text(
                        "     Swipe to Start",
                        style: GoogleFonts.getFont(
                          'Inter',
                          textStyle: TextStyle(
                              color: backgroundColor,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.6,
                              wordSpacing: 1,
                              fontSize: 20),
                        ),
                      ),
                      onSwipe: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                //Leads to User Welcome
                                builder: (_) => const MainNavigation()));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
