import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_rehan/pages/home_page.dart';
import 'package:flutter_application_rehan/pages/login_page.dart';

// Created by Rehan Ahsani on 6-5-2022
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      darkTheme: ThemeData(brightness: Brightness.light),

      routes: {
        "/": (context) => LoginPage(),
      },
    );
  }
}
