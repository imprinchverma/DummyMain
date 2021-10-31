import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/firebase/screen_two_sign_up.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../uIUx/homePage.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  TextEditingController passwordController2 = TextEditingController();
  TextEditingController emailController2 = TextEditingController();
  TextEditingController confirmPassword2 = TextEditingController();
  late Future<SharedPreferences>  sharedPreferences = SharedPreferences.getInstance();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff0e4d54),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff0e4d54).withOpacity(0.984),
              Color(0xff0e4d54),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [
              0.5,
              0.3,
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 2),
              height: 230,
              child: Row(
                children: [
                  weightMargin_10,
                  Container(
                    margin: EdgeInsets.only(right: 25, top: 5),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 90,left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "A world of",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.roboto().fontFamily,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              "possibility in",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.roboto().fontFamily,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              "an app",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.roboto().fontFamily,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            margin_50,
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 40, right: 40, top: 10, bottom: 10),
                    child: TextFormField(
                      controller:emailController2,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'enter a valid user';
                        }
                        return null;
                      },
                      // onSaved: (value)
                      // {
                      //   emailController2.text = value!;
                      // },
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        hintText: 'Name',
                        hintStyle: TextStyle(
                          color: Color(0xff5b878b),
                          fontSize: 23,
                        ),
                      ),
                    ),
                  ),
                  Container(

                    margin: EdgeInsets.only(
                        left: 40, right: 40, top: 10, bottom: 10),
                    child: TextFormField(
                      controller: passwordController2,
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a valid password';
                        }
                        return null;
                      },
                      // onSaved: (value)
                      // {
                      //   passwordController2.text = value!;
                      // },
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Color(0xff5b878b),
                          fontSize: 23,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            margin_50,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 40),
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                      ),
                    ),
                    margin_30,
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            _signIn(emailController2.text,passwordController2.text);
                          },
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  "Ok",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff5b878b),
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Color(0xff5b878b),
                                  size: 35,
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
            ),
            margin_50,
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Text(
                      "Your first time?",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff5b878b),
                        fontFamily: GoogleFonts.roboto().fontFamily,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Text(
                      " Sign up",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: GoogleFonts.roboto().fontFamily,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScreenTwoSignUp()),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
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
  void _signIn(String email, String password) async{
    print("email------> ${email}");
    print("passwrod------> ${password}");
    try {
      if (_formKey.currentState!.validate()) {
        await _auth.signInWithEmailAndPassword(email: email, password: password)
            .then((uid) =>
        {
          Fluttertoast.showToast(msg: "login Successful"),
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomePage())),
        }).catchError((e) {
          Fluttertoast.showToast(msg: e.message);
        });
      }
    } catch(e) {}
    var pref = await sharedPreferences;
    await pref.setString('email', emailController2.text.toString());
    await pref.setString('password', passwordController2.text.toString());
    //check value
    var email1 = await pref.getString("email");
    print("email $email1");
  }
}
