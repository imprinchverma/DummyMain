import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/firebase/sign_up.dart';

import 'login_page.dart';

class AdLoginPage extends StatefulWidget {
  AdLoginPage({Key? key}) : super(key: key);

  @override
  _AdLoginPageState createState() => _AdLoginPageState();
}

class _AdLoginPageState extends State<AdLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff0d4c53),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 10),
            child: Row(
              children: [
                OutlinedButton(
                  child: Icon(Icons.arrow_back),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: Size(20, 20),
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                "MOVEMENT",
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                  fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                ),
              ),
            ),
          ),
          margin_5,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("GROWTH",style: TextStyle(
                color: Colors.white,
                ),
                ),
              ),
              Container(
                child: Text("*",style: TextStyle(
                  color: Colors.white,
                ),
                ),
              ),
              weightMargin_10,
              Container(
                child: Text("HAPPENS",style: TextStyle(
                  color: Colors.white,
                ),
                ),
              ),
              Container(
                child: Text("*",style: TextStyle(
                  color: Colors.white,
                ),
                ),
              ),
              weightMargin_10,
              Container(
                child: Text("TODAY",style: TextStyle(
                  color: Colors.white,
                ),
                ),
              ),
              Container(
                child: Text("*",style: TextStyle(
                  color: Colors.white,
                ),
                ),
              ),
            ],
          ),
          margin_30,
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                weightMargin_30,
                Container(
                  child: InkWell(
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    ),
                  ),
                ),
              ],
            ),
          ),
          margin_50,
          Container(
            child: Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.email,color: Colors.white,
                      ),
                      labelText: 'email',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock,color: Colors.white,
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
                margin_50,
                Container(
                  height: 40,
                  color: Colors.black26,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 40),
                        child: Text(
                          'Sign up with Email',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: 'SFUIDisplay'),
                        ),
                      ),
                    ],
                  ),
                ),
                margin_20,
                Container(
                  height: 40,
                  color: Color(0xff4267B2),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Image.asset(
                          "image/mylogo.png",
                          width: 26,
                          height: 26,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 40),
                        child: Text(
                          'Sign up with facebook',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: 'SFUIDisplay'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
  var margin_5 = SizedBox(
    height: 5,
  );

  var margin_10 = SizedBox(
    height: 20,
  );
  var weightMargin_10 = SizedBox(
    width: 5,
  );
  var weightMargin_20 = SizedBox(
    width: 10,
  );
  var weightMargin_30 = SizedBox(
    width: 30,
  );
}
