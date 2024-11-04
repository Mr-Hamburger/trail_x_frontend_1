import 'package:flutter/material.dart';
import 'package:trailx_app/screens/explore/liked_screens/liked_camping.dart';
import 'package:trailx_app/screens/explore/liked_screens/liked_citywalk.dart';
import 'package:trailx_app/screens/explore/liked_screens/liked_kayaking.dart';
import 'package:trailx_app/screens/explore/liked_screens/liked_hiking.dart';

class Liked extends StatefulWidget {
  @override
  _Liked createState() => _Liked();
}

class _Liked extends State<Liked> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: TabBar(
                padding: EdgeInsets.only(top: 0),
                dividerColor: Colors.transparent,
                indicatorColor: Colors.transparent,
                unselectedLabelStyle:
                    TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                labelColor: Colors.black,
                labelStyle: TextStyle(fontWeight: FontWeight.w900),
                isScrollable: true,
                labelPadding: EdgeInsets.symmetric(horizontal: 12),
                tabs: [
                  Tab(text: "Hiking"),
                  Tab(text: "Kayaking"),
                  Tab(text: "Camping"),
                  Tab(text: "City Walk"),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                LikedHikingCards(),
                LikedKayakingCards(),
                LikedCampingCards(),
                LikedCitywalkCards(),
              ],
            )),
      ),
    );
  }
}
