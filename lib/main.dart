import 'package:flutter/material.dart';
import 'package:trailx_app/screens/login/login_ini.dart';
//import 'package:trailx_app/screens/login/login_ini.dart';
import 'package:trailx_app/screens/login/sign_up.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginIni(),
      debugShowCheckedModeBanner: false,
    );
  }
}
