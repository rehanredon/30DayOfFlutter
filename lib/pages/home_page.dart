import 'package:flutter/material.dart';
import 'package:flutter_application_rehan/model/catelog.dart';
import 'package:flutter_application_rehan/widgets/drawer.dart';
import 'package:flutter_application_rehan/widgets/item_widget.dart';

// create by rehan ahsani //

class HomePage extends StatelessWidget {
  double days = 30;

  @override
  Widget build(BuildContext context) {
    final dummy_list =List.generate(50, (index) => CatelogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Rehan App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
          itemCount: dummy_list.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummy_list[index],);
          }),
      drawer: MyDrawer(),
    );
  }
}
