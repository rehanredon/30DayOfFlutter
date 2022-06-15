import 'package:flutter/material.dart';

// create by rehan ahsani //

class HomePage extends StatelessWidget {
  double days = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rehan APp"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome $days days of Flutter  By  Rehan Ahsani"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
