import 'package:flutter/material.dart';
import 'package:trailx_app/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileMain extends StatefulWidget {
  @override
  _ProfileMain createState() => _ProfileMain();
}

class _ProfileMain extends State<ProfileMain> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
          ),
          title: Text(
            "Hello Taylor",
            style: GoogleFonts.getFont('Inter',
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {}, //to be implemented
              icon: const Icon(Icons.ios_share),
              tooltip: 'Share Your Profile',
            )
          ],
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: DecoratedBox(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/pfp_bkgd_img.png'),
                    fit: BoxFit.cover)),
            child: Center(
              //Profile Content
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Left column
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            Image.asset('assets/images/ex_pfp.png').image,
                        radius: 46,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                      ),
                      Text(
                        "TrailX ID: taylor19",
                        style: GoogleFonts.getFont('Inter',
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w600),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                      ),
                      SizedBox(
                        height: 29,
                        width: 80,
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  editProfileButtonColor)),
                          onPressed: () {},
                          child: Text("Edit Profile",
                              style: GoogleFonts.getFont('Inter',
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  ),
                  const VerticalDivider(
                    thickness: 1.24,
                  ),
                  //Right column
                  Column(
                    children: [
                      Text("You have completed",
                          style: GoogleFonts.getFont('Inter',
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w300))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
