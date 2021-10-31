import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/db/dbpage.dart';
import 'package:login_page/firebase/user_model.dart';
import 'package:login_page/futureBuilderExample/flutterBuilderEx.dart';
import 'package:login_page/futureBuilderExample/jsonExample.dart';
import 'package:login_page/stackEx/stack_eg.dart';
import 'package:login_page/stackEx/stack_example.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../cardExample/card_eg.dart';
import '../cardExample/card_eg_two.dart';
import 'music_tem.dart';
import 'music_tem_two.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _branch = ['MCA', 'BCA', 'b.Tech'];
  var selected = 'BCA';

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loginUser = UserModel();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance
    .collection("users")
    .doc(user!.uid)
    .get()
    .then((value){
      this.loginUser = UserModel.fromMap(value.data());
      setState(() {

      });
    });
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
              1.3,
              0.4,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Text("${loginUser.name}"),
                  ElevatedButton(
                    child: Text('Alert Dialogue Box'),
                    onPressed: () {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("My first Alert box"),
                            content: Text("Alert box"),
                            actions: [
                              TextButton(
                                child: Text("Yes"),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              TextButton(
                                child: Text("No"),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                  ElevatedButton(
                    child: Text("BottomSheet"),
                    onPressed: () {
                      showModalBottomSheet(
                          isDismissible: false,
                          enableDrag: false,
                          barrierColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          )),
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 350,
                              child: Column(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 20, bottom: 20),
                                    child: Text(
                                      "Share question",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily:
                                            GoogleFonts.roboto().fontFamily,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              child: Column(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 35.0,
                                                    backgroundImage: AssetImage(
                                                        'image/kat2.jpg'),
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      "katrin Langford",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        weightMargin_10,
                                        Column(
                                          children: [
                                            Container(
                                              child: Column(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 35.0,
                                                    backgroundImage: AssetImage(
                                                        'image/mili.jpg'),
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      "Milli BB",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        weightMargin_10,
                                        Column(
                                          children: [
                                            Container(
                                              child: Column(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 35.0,
                                                    backgroundImage: AssetImage(
                                                        'image/ritik.jpg'),
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      "Hrithik Roshan",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        weightMargin_10,
                                        Column(
                                          children: [
                                            Container(
                                              child: Column(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 35.0,
                                                    backgroundImage: AssetImage(
                                                        'image/kat.jpg'),
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      "katrin Langford",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: ListTile(
                                      leading: Icon(
                                        Icons.bookmark,
                                        color: Colors.black45,
                                        size: 30,
                                      ),
                                      title: Text(
                                        'Add question to Bookmarks',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                        textScaleFactor: 1.5,
                                      ),
                                      selected: true,
                                    ),
                                  ),
                                  Container(
                                    child: ListTile(
                                      leading: Icon(
                                        Icons.download_done_rounded,
                                        color: Colors.black45,
                                        size: 30,
                                      ),
                                      title: Text(
                                        'Share question via...',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                        textScaleFactor: 1.5,
                                      ),
                                      selected: true,
                                    ),
                                  ),
                                  Container(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.lightBlue,
                                        onPrimary: Colors.white,
                                        shadowColor: Colors.lightBlue,
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0)),
                                        minimumSize: Size(300, 40),
                                      ),
                                      child: Text("Send"),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                  ),
                  Container(
                    color: Colors.white,
                    width: 100,
                    height: 40,
                    child: DropdownButton<String>(
                      dropdownColor: Colors.white,
                      elevation: 2,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      items: _branch.map((String dropdownItem) {
                        return DropdownMenuItem<String>(
                          value: dropdownItem,
                          child: Text(dropdownItem),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          this.selected = newValue!;
                        });
                      },
                      value: selected,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                      onPrimary: Colors.white,
                      shadowColor: Colors.lightBlue,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(5.0)),
                      minimumSize: Size(100, 40),
                    ),
                    child: Text('Ui design'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => UiExample()));
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                      onPrimary: Colors.white,
                      shadowColor: Colors.lightBlue,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(5.0)),
                      minimumSize: Size(100, 40),
                    ),
                    child: Text('Stack Example'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => StackExample()));
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                      onPrimary: Colors.white,
                      shadowColor: Colors.lightBlue,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(5.0)),
                      minimumSize: Size(100, 40),
                    ),
                    child: Text('Music Player'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MusicUiOne()));
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                      onPrimary: Colors.white,
                      shadowColor: Colors.lightBlue,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(5.0)),
                      minimumSize: Size(100, 40),
                    ),
                    child: Text('Music Player2'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MusicPlayerTwo()));
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                      onPrimary: Colors.white,
                      shadowColor: Colors.lightBlue,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(5.0)),
                      minimumSize: Size(100, 40),
                    ),
                    child: Text('Card Example'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CardExample()));
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                      onPrimary: Colors.white,
                      shadowColor: Colors.lightBlue,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(5.0)),
                      minimumSize: Size(100, 40),
                    ),
                    child: Text('Card Example_2'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Card_Example_two()));
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                      onPrimary: Colors.white,
                      shadowColor: Colors.lightBlue,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(5.0)),
                      minimumSize: Size(100, 40),
                    ),
                    child: Text('Future Builder'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FutureBuilderExample()));
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                      onPrimary: Colors.white,
                      shadowColor: Colors.lightBlue,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(5.0)),
                      minimumSize: Size(100, 40),
                    ),
                    child: Text('Json with future builder'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => JsonExample()));
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                      onPrimary: Colors.white,
                      shadowColor: Colors.lightBlue,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(5.0)),
                      minimumSize: Size(100, 40),
                    ),
                    child: Text('Sqflite Example'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DbHomePage()));
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
}
