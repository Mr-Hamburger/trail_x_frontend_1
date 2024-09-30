import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trailx_app/const/colors.dart';
import 'package:trailx_app/screens/login/sign_up_duration_q.dart';

class SignUpTrailTypeQ extends StatefulWidget {
  const SignUpTrailTypeQ({super.key});

  @override
  _SignUpTrailTypeQ createState() => _SignUpTrailTypeQ();
}

class _SignUpTrailTypeQ extends State<SignUpTrailTypeQ> {
  int selectedIndex = -1; // No selection initially
  List selectionOptions = [
    'Flat and Easy',
    'Moderate Inclines',
    'Steep and Challenging',
    'Mixed Terrain'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Choose Your Preferred Weather",
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
              itemCount: 4,
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
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) =>
                                const SignUpDurationQ())); // Update selected index
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
