import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:trailx_app/const/colors.dart';

class FypKayakingCards extends StatelessWidget {
  const FypKayakingCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 2 / 3),
      itemBuilder: (context, index) {
        return Center(
          child: Card(
            color: underlineColor,
            elevation: 0,
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                    title: Text("White Mountain"), subtitle: Text("Lincon, NH"))
              ],
            ),
          ),
        );
      },
    );
  }
}
