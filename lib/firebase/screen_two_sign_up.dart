import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/firebase/user_model.dart';
import 'package:login_page/firebase/screentwo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../uIUx/homePage.dart';

class ScreenTwoSignUp extends StatefulWidget {
  const ScreenTwoSignUp({Key? key}) : super(key: key);

  @override
  _ScreenTwoSignUpState createState() => _ScreenTwoSignUpState();
}

class _ScreenTwoSignUpState extends State<ScreenTwoSignUp> {
  final _formKey = GlobalKey<FormState>();

  //TextController to read text entered in text field
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController name = TextEditingController();
  final _auth = FirebaseAuth.instance;
  late SharedPreferences _sharedPreferences;
  late String UserEmail,UserPass;
  late  bool newUser;
  Future<SharedPreferences> sharedPreferences =  SharedPreferences.getInstance();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                1.3,
                0.4,
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 2),
                height: 270,
                child: Row(
                  children: [
                    weightMargin_10,
                    Container(
                      margin: EdgeInsets.only(right: 25, top: 5),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 90),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "We can start",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "something",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "new",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                              ),
                            ),
                            margin_50,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: 40, right: 40, top: 10, bottom: 10),
                      child: TextFormField(
                        controller: name,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your user Name';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          name.text = value!;
                        },
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
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
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 40, right: 40, top: 10, bottom: 10),
                      child: TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter a valid email';
                          }
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return 'Please a valid Email';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          emailController.text = value!;
                        },
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
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
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: Color(0xff5b878b),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 40, right: 40, top: 10, bottom: 10),
                      child: TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please a Enter Password';
                          }
                          if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]')
                              .hasMatch(value)) {
                            return "Must be at least 8 characters in length";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          passwordController.text = value!;
                        },
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
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
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 40, right: 40, top: 10, bottom: 10),
                      child: TextFormField(
                        controller: confirmPassword,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please re-enter password';
                          }
                          print(passwordController.text);

                          print(confirmPassword.text);

                          if (passwordController.text != confirmPassword.text) {
                            return "Password does not match";
                          }
                          return null;
                        },
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
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
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(
                            color: Color(0xff5b878b),
                            fontSize: 18,
                          ),
                        ),
                      ),
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
                                    _signUp(emailController.text,
                                        passwordController.text);

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
                                            fontFamily:
                                                GoogleFonts.roboto().fontFamily,
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
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 40),
                      child: Text(
                        "Have we meet before?",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff6f9093),
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                      ),
                    ),
                    InkWell(
                      child: Text(
                        " Sign in",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondScreen()),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
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

  void _signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
      var pref = await sharedPreferences;
      await pref.setString('email', emailController.text.toString());
      await pref.setString('password', passwordController.text.toString());
      //check value
      var email1 = await pref.getString("email");
      print("email $email1");
    }
  }

  postDetailsToFirestore() async {
    // calling our firebase
    // calling our user model
    // sending these volume
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? users = _auth.currentUser;
    UserModel userModel = UserModel();
    //writing all the values
    userModel.email = users!.email;
    userModel.uid = users.uid;
    userModel.name = name.text;

    await  firebaseFirestore
        .collection("users")
        .doc(users.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account Created Successfully");
    Navigator.pushAndRemoveUntil((context),MaterialPageRoute(builder: (context) => HomePage()),
        (route) => false);
  }
}
