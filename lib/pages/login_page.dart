import 'package:flutter/material.dart';
import 'package:flutter_application_rehan/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
    } else {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));

      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/block.png",
                fit: BoxFit.contain,
                height: 300,
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 26.0,
                  horizontal: 32.0,
                ),
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter UserName",
                      labelText: "UserName",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return null;
                      } else {
                        return "UserName Cannot Be Empty";
                      }
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter UserPassword",
                      labelText: "UserPassword",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return null;
                      } else if (value.length < 6) {
                        return "Password lenght should Be atleast 6";
                      } else {
                        return "Password Cannot Be Empty";
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text("Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                      ),
                    ),
                  )
                  // ElevatedButton(
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(),
                  //   onPressed: () {
                  //     // print("new");
                  //     Navigator.of(context).push(
                  //         MaterialPageRoute(builder: (context) => HomePage()));

                  //     // Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  // )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
