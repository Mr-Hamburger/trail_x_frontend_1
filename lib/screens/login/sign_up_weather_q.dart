import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trailx_app/const/colors.dart';

class SignUpWeatherQ extends StatefulWidget {
  const SignUpWeatherQ({super.key});

  @override
  _SignUpWeatherQ createState() => _SignUpWeatherQ();
}

class _SignUpWeatherQ extends State<SignUpWeatherQ> {
  @override
  void initState() {
    super.initState();
    // Initialize any data or perform actions before the page is built
  }

  @override
  void dispose() {
    // Clean up any resources or listeners when the widget is removed from the widget tree
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: GridView.builder(
              physics: const ClampingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1),
              itemCount: 5,
              itemBuilder: (context, index) {
                return ElevatedButton(
                  style: ButtonStyle(foregroundColor: ),
                  onPressed: () => setState(() {
                    selectedIndex = index;
                  }),
                  child: Text(
                    "Sunny",
                    style: GoogleFonts.getFont(
                      'Inter',
                      textStyle: TextStyle(
                          color: loginTextColor,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.6,
                          wordSpacing: 1,
                          fontSize: 20),
                    ),
                  ),
                );
              },
            )));
  }

  // Define any other helper methods or callbacks
}
