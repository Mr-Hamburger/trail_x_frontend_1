import 'package:flutter/material.dart';
import 'package:trailx_app/const/colors.dart';
import 'package:trailx_app/screens/explore/explore_main.dart';
import 'package:trailx_app/screens/leaderboard/leaderboard_main.dart';
import 'package:trailx_app/screens/map/map_main.dart';
import 'package:trailx_app/screens/profile/profile_main.dart';
import 'package:trailx_app/screens/trails/trails_main.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});
  @override
  State<MainNavigation> createState() => _MainNavigation();
}

class _MainNavigation extends State<MainNavigation> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = <Widget>[
    ExploreMainTabBar(),
    TrailsMain(),
    MapMain(),
    LeaderboardMain(),
    ProfileMain(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined, size: 30), label: 'Explore'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.hiking_outlined,
                size: 35,
              ),
              label: 'Trails'),
          BottomNavigationBarItem(
              icon: Container(
                alignment: Alignment.center,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: mapIconBackgroundColor,
                    borderRadius: BorderRadius.circular(40)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.4),
                  child: Icon(
                    Icons.pin_drop,
                    color: backgroundColor,
                    size: 40,
                  ),
                ),
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.leaderboard_outlined,
                size: 35,
              ),
              label: 'Leaderboard'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
                size: 35,
              ),
              label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: underlineColor,
        unselectedItemColor: unselectedNavColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
