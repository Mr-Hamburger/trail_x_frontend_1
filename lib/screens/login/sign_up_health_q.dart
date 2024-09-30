import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trailx_app/const/colors.dart';
import 'package:trailx_app/screens/login/sign_up_final.dart';
import 'package:trailx_app/screens/login/sign_up_weather_q.dart';

class SignUpHealthQ extends StatefulWidget {
  const SignUpHealthQ({super.key});

  @override
  _SignUpHealthQ createState() => _SignUpHealthQ();
}

class _SignUpHealthQ extends State<SignUpHealthQ> {
  int selectedIndex = -1; // No selection initially
  List selectionOptions = ['Yes', 'No'];
  bool selectedYes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 220),
            child: Text(
              "Do you have any health\nconditions or concerns\nthat may affect your hike?",
              style: GoogleFonts.getFont(
                'Inter',
                textStyle: TextStyle(
                    color: loginTextColor,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.6,
                    wordSpacing: 1,
                    fontSize: 23,
                    shadows: const <Shadow>[
                      Shadow(
                          offset: Offset(0, 3.5),
                          blurRadius: 8,
                          color: Colors.grey),
                    ]),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 100 / 25,
              ),
              itemCount: 2,
              itemBuilder: (context, index) {
                bool isSelected = selectedIndex == index;
                return FilledButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    backgroundColor: MaterialStateProperty.all(
                      isSelected
                          ? loginGreenColor
                          : backgroundColor, // Change button color based on selection
                    ),
                    foregroundColor: MaterialStateProperty.all(
                      isSelected
                          ? backgroundColor
                          : loginGreenColor, // Change text color based on selection
                    ),
                  ),
                  onPressed: () => setState(() {
                    selectedIndex = index;
                    if (selectedIndex == 1) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const SignUpFinal()));
                    } else {
                      setState(() {
                        selectedYes = true;
                      });
                    }
                  }),
                  child: Text(
                    selectionOptions[
                        index], // You can change this to dynamic content based on index
                    style: GoogleFonts.getFont(
                      'Inter',
                      textStyle: TextStyle(
                        color: isSelected ? Colors.white : loginTextColor,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.6,
                        wordSpacing: 1,
                        fontSize: 20,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
