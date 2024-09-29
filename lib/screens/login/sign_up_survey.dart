import 'package:flutter/material.dart';
import 'package:trailx_app/const/colors.dart';
import 'package:trailx_app/screens/login/sign_up_welcome_ini.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpSurvey extends StatelessWidget {
  const SignUpSurvey({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                    style: GoogleFonts.getFont(
                      'Inter',
                      textStyle: TextStyle(
                        color: loginTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        letterSpacing: 0.4,
                      ),
                    ),
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
                        hintText: "Survey Q1"),
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
                        hintText: "Survey Q2"),
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
                        hintText: "Survey Q3"),
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
                        hintText: "Survey Q4"),
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
                        hintText: "Survey Q5"),
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
                        hintText: "Survey Q6"),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              //Leads to User Welcome
                              builder: (_) => const SignUpWelcomeIni()));
                    },
                    child: Text(
                      'Sign Up',
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
