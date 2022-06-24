import 'package:flutter/material.dart';
import 'package:flutter_application_rehan/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

// Created by Rehan Ahsani on 6-5-2022
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      // home: HomePage(),
      routes: {
        "/": (context) => LoginPage(),
      },
    );
  }
}
