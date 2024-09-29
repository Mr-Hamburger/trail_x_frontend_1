import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trailx_app/const/colors.dart';
import 'package:trailx_app/screens/login/login.dart';

class LoginIni extends StatelessWidget {
  const LoginIni({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/trailx_login_photo.png'),
            const Text(
              "We guide your way.",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.6,
                  wordSpacing: 1.2),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
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
                  "  Explore the Outdoors",
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
                          builder: (_) => const Login()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
