import 'package:flutter/material.dart';

// Created by Rehan Ahsani on 6-5-2022
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Welcome Rehan Ahsani"),
          ),
        ),
      ),
    );
  }
}
