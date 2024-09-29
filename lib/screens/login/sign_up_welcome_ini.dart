import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trailx_app/const/colors.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:trailx_app/screens/login/sign_up_weather_q.dart';

class SignUpWelcomeIni extends StatelessWidget {
  const SignUpWelcomeIni({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Center(
                  child: Text(
                    "Welcome Taylor",
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
                    "Let's Create an Avatar",
                    style: GoogleFonts.getFont('Inter',
                        textStyle: TextStyle(
                          color: loginTextColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.5,
                          letterSpacing: 0.4,
                        )),
                  ),
                ),
              ]),
              Center(
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
                    "  Swipe to add your info",
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
                            builder: (_) => const SignUpWeatherQ()));
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
