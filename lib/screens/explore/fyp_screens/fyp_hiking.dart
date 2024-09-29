import 'dart:ui';

import 'package:flutter/material.dart';

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

  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 2.0,
        childAspectRatio: 4 / 3,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return Center(
          child: Stack(
            children: [
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 2,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            imagePaths[index],
                          ),
                          fit: BoxFit.cover)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
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
                        const ListTile(
                          textColor: Colors.white,
                          title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text("White Mountain",
                                      style: TextStyle(fontSize: 15)),
                                ),
                                Flexible(
                                  child: Text(
                                    "23.2 Miles Away",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontSize: 14),
                                  ),
                                )
                              ]),
                          subtitle: Text(
                            textAlign: TextAlign.left,
                            "Lincon, NH",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  color: const Color.fromARGB(255, 111, 201, 158),
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
              )
            ],
          ),
        );
      },
    );
  }
}
