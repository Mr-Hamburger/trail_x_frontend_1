import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trailx_app/const/colors.dart';

class SignUpWeatherQ extends StatefulWidget {
  const SignUpWeatherQ({super.key});

  @override
  _SignUpWeatherQ createState() => _SignUpWeatherQ();
}

class _SignUpWeatherQ extends State<SignUpWeatherQ> {
  int selectedIndex = -1; // No selection initially

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: SizedBox(
          height: 600,
          child: GridView.builder(
            physics: const ClampingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1),
            itemCount: 5,
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
                  selectedIndex = index; // Update selected index
                }),
                child: Text(
                  "Sunny", // You can change this to dynamic content based on index
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
      ),
    );
  }
}
