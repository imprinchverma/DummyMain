import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/firebase/screentwo.dart';

import '../uIUx/homePage.dart';

class UiExample extends StatefulWidget {
  const UiExample({Key? key}) : super(key: key);

  @override
  _UiExampleState createState() => _UiExampleState();
}

class _UiExampleState extends State<UiExample> {
  @override
  Widget build(BuildContext context) {
    var rating = 0.0;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/backg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 15),
              height: 100,
              child: Row(
                children: [
                  Container(
                      width: 60,
                      height: 100,
                      padding: EdgeInsets.only(top: 10),
                      //margin: ,
                      child: InkWell(
                          child: Icon(
                            Icons.arrow_back_ios_new_sharp,
                            size: 30,
                            color: Colors.white,
                          ),
                          onTap: () {
                            Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          })),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(right: 20, top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage('image/kat2.jpg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 200,
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  color: Color(0xff0f382f),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 20),
                                child: Text(
                                  "Miami St Hotel",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontFamily:
                                        GoogleFonts.abrilFatface().fontFamily,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 20, top: 15),
                                child: RatingBar.builder(
                                    itemSize: 22,
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.all(5),
                                    itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.orangeAccent,
                                        ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    }),
                              ),
                            ],
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(top: 40, right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orangeAccent,
                                      onPrimary: Colors.white,
                                      shadowColor: Colors.lightBlue,
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      minimumSize: Size(60, 30),
                                    ),
                                    child: Text('4 Star'),
                                    onPressed: () {
                                      Navigator.of(context);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20, bottom: 20),
                            width: 250,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 20.0,
                                  backgroundImage: AssetImage('image/kat2.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 20.0,
                                  backgroundImage: AssetImage('image/mili.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 20.0,
                                  backgroundImage: AssetImage('image/kat.jpg'),
                                ),
                                CircleAvatar(
                                  radius: 20.0,
                                  backgroundImage:
                                      AssetImage('image/ritik.jpg'),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(right: 15, bottom: 10),
                                    child: Text(
                                      "30 reviews",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
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
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 15),
                      height: 90,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Miami St beach front. Miami St beach front. Miami St beach front. Miami St beach front."
                              "",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: GoogleFonts.roboto().fontFamily,
                              ),
                              textScaleFactor: 1.1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(
                              "Read more",
                              style: TextStyle(
                                color: Color(0xff558589),
                                fontSize: 16,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: 40, right: 40, top: 40, bottom: 30),
                              height: 50,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.lock_clock,
                                          color: Colors.orange,
                                          size: 30,
                                        ),
                                        Text(
                                          "Time",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.wifi,
                                          color: Colors.orange,
                                          size: 30,
                                        ),
                                        Text(
                                          "Wi-Fi",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.sports_bar_sharp,
                                          color: Colors.orange,
                                          size: 30,
                                        ),
                                        Text(
                                          "Bar",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.fastfood,
                                          color: Colors.orange,
                                          size: 30,
                                        ),
                                        Text(
                                          "Food",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.fitness_center_sharp,
                                          color: Colors.orange,
                                          size: 30,
                                        ),
                                        Text(
                                          "Gym",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                color: Color(0xff06d9170),
                              ),
                              width: 300,
                              height: 45,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "CHOOSE ROOM",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      letterSpacing: 3,
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
