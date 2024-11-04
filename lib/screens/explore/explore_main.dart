import 'package:flutter/material.dart';
import 'package:trailx_app/const/colors.dart';
import 'package:trailx_app/screens/explore/fyp_screens/fyp_tabbar.dart';
import 'package:trailx_app/screens/explore/liked_screens/liked_tabbar.dart';

class ExploreMainTabBar extends StatefulWidget {
  const ExploreMainTabBar({super.key});

  @override
  _ExploreMainTabBar createState() => _ExploreMainTabBar();
}

class _ExploreMainTabBar extends State<ExploreMainTabBar>
    with TickerProviderStateMixin {
  //for the hamburger menu:
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: DefaultTabController(
        length:
            4, // Set this to 4 to match the number of tabs and TabBarView widgets
        child: Scaffold(
          key: _scaffoldKey,
          drawer: Drawer(
            child: ListView(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text("Drawer to be Implemented"),
                ),
                ListTile(
                  title: const Text('Item 1'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Item 2'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Item 3'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(15), // Adjust height here
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    icon: const Icon(Icons.menu),
                  ),
                  Expanded(
                    child: TabBar(
                      labelPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                      isScrollable: false,
                      tabAlignment: TabAlignment.fill,
                      labelStyle: const TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                      labelColor: Colors.black,
                      indicatorColor: underlineColor,
                      indicatorWeight: 3, // Adjust indicator weight if needed
                      tabs: const [
                        Center(child: Tab(text: "ForYou")),
                        Center(child: Tab(text: "Follow")),
                        Center(child: Tab(text: "Nearby")),
                        Center(child: Tab(text: "Liked")),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.search,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Fyp(),
              //Put Class Names for Each Page Here
              const Text("Follow"),
              const Text("Nearby"),
              Liked(),
            ],
          ),
        ),
      ),
    );
  }
}
