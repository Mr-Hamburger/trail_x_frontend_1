import 'package:flutter/material.dart';
import 'package:trailx_app/screens/explore/fyp_screens/fyp_camping.dart';
import 'package:trailx_app/screens/explore/fyp_screens/fyp_citywalk.dart';
import 'package:trailx_app/screens/explore/fyp_screens/fyp_kayaking.dart';
import 'package:trailx_app/screens/explore/fyp_screens/fyp_hiking.dart';

class Fyp extends StatefulWidget {
  @override
  _Fyp createState() => _Fyp();
}

class _Fyp extends State<Fyp> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: const PreferredSize(
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
                FypHikingCards(),
                FypKayakingCards(),
                FypCampingCards(),
                FypCityWalkCards(),
              ],
            )),
      ),
    );
  }
}
