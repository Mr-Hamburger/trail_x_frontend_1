import 'dart:ui';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trailx_app/const/colors.dart';

class FypCampingCards extends StatefulWidget {
  const FypCampingCards({super.key});
  @override
  State<FypCampingCards> createState() => _FypCampingCards();
}

class _FypCampingCards extends State<FypCampingCards> {
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
        childAspectRatio: 2 / 2.6,
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
                    // This part holds the image with the blur at the bottom 1/3
                    Expanded(
                      flex: 2,
                      child: Stack(
                        children: [
                          // Full image in the background
                          Positioned.fill(
                            child: Image.asset(
                              imagePaths[index],
                              fit: BoxFit.fill,
                              width: double.infinity,
                            ),
                          ),
                          // Blur the bottom part of the image with a fixed height
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15)),
                                child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('White Mountain',
                                          style: GoogleFonts.getFont('Inter',
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700)),
                                      Text("Lincoln, NH",
                                          style: GoogleFonts.getFont('Inter',
                                              color: Colors.white,
                                              fontSize: 9,
                                              fontWeight: FontWeight.w500))
                                    ],
                                  ),
                                ).frosted(blur: 6)),
                          ),
                        ],
                      ),
                    ),
                    // Text information in the white box
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            child: Column(
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
                                  "1.69 Mi",
                                  style: GoogleFonts.getFont('Inter',
                                      color: loginGreenColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Duration",
                                  style: GoogleFonts.getFont('Inter',
                                      color: Colors.black,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "1.5 Hr",
                                  style: GoogleFonts.getFont('Inter',
                                      color: loginGreenColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Distance",
                                  style: GoogleFonts.getFont('Inter',
                                      color: Colors.black,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "6,321 Ft",
                                  style: GoogleFonts.getFont('Inter',
                                      color: loginGreenColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Difficulty",
                                  style: GoogleFonts.getFont('Inter',
                                      color: Colors.black,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Medium",
                                  style: GoogleFonts.getFont('Inter',
                                      color: loginGreenColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
