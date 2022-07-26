import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {  @override
  Widget build(BuildContext context) {
  final imagUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBF-jUK2BKQNQPFg2V82OfYZ4ZnkjblRns9w&usqp=CAU";
  return Drawer(
     child: Container(
       color: Colors.deepPurple,
       child: ListView(
         children: [

           DrawerHeader(
             padding: EdgeInsets.zero ,
             margin: EdgeInsets.zero ,
               child: UserAccountsDrawerHeader(
                 decoration: BoxDecoration(
                   color:Colors.deepPurple
                 ),
                 accountName: Text("Rehan Khan"),
                 accountEmail: Text("rehankhan@gmail.com"),
                 currentAccountPicture: CircleAvatar(
                   backgroundImage: NetworkImage(imagUrl),
                 ),
                ),
           ),
           ListTile(
             leading: Icon(
                 CupertinoIcons.home,
                 color: Colors.white,
             ),
             title: Text("Home",
             textScaleFactor: 1.2,
             style: TextStyle(
               color: Colors.white
             ),
             ),
           ),
           ListTile(
             leading: Icon(
                 CupertinoIcons.profile_circled,
                 color: Colors.white,
             ),
             title: Text("Profile",
             textScaleFactor: 1.2,
             style: TextStyle(
               color: Colors.white
             ),
             ),
           ),
           ListTile(
             leading: Icon(
                 CupertinoIcons.mail,
                 color: Colors.white,
             ),
             title: Text("Email",
             textScaleFactor: 1.2,
             style: TextStyle(
               color: Colors.white
             ),
             ),
           )
         ],

       ),
     ),


  );
  }
}
