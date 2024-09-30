import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trailx_app/const/colors.dart';
import 'package:trailx_app/screens/login/sign_up_health_q.dart';

class SignUpEquipQ extends StatefulWidget {
  const SignUpEquipQ({super.key});

  @override
  _SignUpEquipQ createState() => _SignUpEquipQ();
}

class _SignUpEquipQ extends State<SignUpEquipQ> {
  int selectedIndex = -1; // No selection initially
  List selectionOptions = [
    'Hiking Poles',
    'Backpack',
    'GPS Device',
    'First Aid Kit',
    'No Specific Equipment'
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
            "Choose Your Preferred Equipment",
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 100 / 25,
              ),
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
                    selectedIndex = index;
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) =>
                                const SignUpHealthQ())); // Update selected index
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
