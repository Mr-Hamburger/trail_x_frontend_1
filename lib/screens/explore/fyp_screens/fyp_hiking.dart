import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trailx_app/const/colors.dart';

class FypHikingCards extends StatefulWidget {
  const FypHikingCards({super.key});
  @override
  State<FypHikingCards> createState() => _FypHikingCards();
}

class _FypHikingCards extends State<FypHikingCards> {
  final List<String> images =
      List<String>.generate(8, (index) => "Item $index");
  final List<String> imagePaths = [
    'assets/images/hiking_0.png',
    'assets/images/hiking_1.png',
    'assets/images/hiking_2.png',
    'assets/images/hiking_3.png',
    'assets/images/hiking_4.png',
    'assets/images/hiking_5.png',
    'assets/images/hiking_6.png',
    'assets/images/hiking_7.png'
  ];
  final List<bool> liked = List<bool>.filled(8, false);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 2.0,
        childAspectRatio: 2 / 2.2,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return Center(
          child: Stack(
            children: [
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        imagePaths[index],
                        fit: BoxFit.fill,
                        //fill the width to the width of the card
                        width: double.infinity,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                        child: Image.asset(
                          imagePaths[index],
                          fit: BoxFit.fill,
                          //fill the width to the width of the card
                          width: double.infinity,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          child: Row(children: [
                            Column(
                              //LEFT HAND TEXT IN TRAIL DESCRIPTION
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Length",
                                  style: GoogleFonts.getFont('Inter',
                                      color: Colors.black,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  textAlign: TextAlign.left,
                                  "1.69 Mi",
                                  style: GoogleFonts.getFont('Inter',
                                      color: loginGreenColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  textAlign: TextAlign.left,
                                  "Duration",
                                  style: GoogleFonts.getFont('Inter',
                                      color: Colors.black,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  textAlign: TextAlign.left,
                                  "1.5 Hr",
                                  style: GoogleFonts.getFont('Inter',
                                      color: loginGreenColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ]),
                        ),
                        SizedBox(
                          child: Column(
                            //RIGHT HAND TEXT IN TRAIL DESCRIPTION
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                textAlign: TextAlign.right,
                                "Distance",
                                style: GoogleFonts.getFont('Inter',
                                    color: Colors.black,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                textAlign: TextAlign.right,
                                "6,321 Ft",
                                style: GoogleFonts.getFont('Inter',
                                    color: loginGreenColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                textAlign: TextAlign.right,
                                "Difficulty",
                                style: GoogleFonts.getFont('Inter',
                                    color: Colors.black,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                textAlign: TextAlign.right,
                                "Medium",
                                style: GoogleFonts.getFont('Inter',
                                    color: loginGreenColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  color: likedColor,
                  icon: liked[index]
                      ? const Icon(Icons.favorite)
                      : const Icon(
                          Icons.favorite_border,
                        ),
                  onPressed: () {
                    setState(() {
                      liked[index] = !liked[index];
                    });
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
