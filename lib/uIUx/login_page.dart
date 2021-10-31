import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/firebase/screentwo.dart';

import 'ad_login_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
          children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Center(
                  child: Text(
                    "My First UI Screen",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.lato().fontFamily,
                    ),
                  ),
                ),
              ),
              margin_50,
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Center(
                  child: Image.asset(
                    "image/user.png",
                  ),
                ),
              ),
              margin_10,
              Container(
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontFamily: GoogleFonts.shareTech().fontFamily,
                    ),
                  ),
                ),
              ),
              margin_10,
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: 20, right: 30, left: 30, bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Username',
                            hintText: 'Enter your Username',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 20, right: 30, left: 30, bottom: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter Your Password',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      margin_20,
                      OutlinedButton(
                        child: Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, letterSpacing: 1),
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          fixedSize: Size(150, 40),
                          backgroundColor: Colors.teal,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AdLoginPage()));
                        },
                      ),
                      margin_30,
                      OutlinedButton(
                        child: Text(
                          'SecondLoginScreen',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, letterSpacing: 1),
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          fixedSize: Size(230, 40),
                          backgroundColor: Colors.teal,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SecondScreen())
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
           ),
        );
  }

  var margin_30 = SizedBox(
    height: 30,
  );

  var margin_40 = SizedBox(
    height: 40,
  );

  var margin_50 = SizedBox(
    height: 50,
  );

  var margin_20 = SizedBox(
    height: 20,
  );

  var margin_10 = SizedBox(
    height: 20,
  );
}
