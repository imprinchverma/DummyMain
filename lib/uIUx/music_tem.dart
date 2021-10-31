import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MusicUiOne extends StatefulWidget {
  const MusicUiOne({Key? key}) : super(key: key);

  @override
  _MusicUiOneState createState() => _MusicUiOneState();
}

class _MusicUiOneState extends State<MusicUiOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Ellen",
                            style: TextStyle(
                              fontSize: 65,
                              fontFamily: GoogleFonts.mukta(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Good Morning",
                            style: TextStyle(
                              fontSize: 22,
                              fontFamily: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('image/head.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.only(left: 4, right: 2, bottom: 2, top: 2),
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Color(0xff159e96),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pinkAccent.withOpacity(0.2),
                      blurRadius: 5,
                      offset: Offset(3, 2),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    margin_40,
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 30, bottom: 10, top: 10),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.movie_creation_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Hip Hop",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 4, right: 2, bottom: 2, top: 2),
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Color(0xff2c159e),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pinkAccent.withOpacity(0.3),
                      blurRadius: 5,
                      offset: Offset(3, 2),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    margin_30,
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 30, bottom: 10, top: 20),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.movie_filter,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Ambient",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            options: CarouselOptions(
              height: 220,
              autoPlay: false,
              autoPlayCurve: Curves.easeInOut,
              enlargeCenterPage: true,
              reverse: true,
              viewportFraction: 0.5,
            ),
          ),
          margin_10,
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                "Favourite",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  fontFamily: GoogleFonts.quicksand(
                    fontWeight: FontWeight.bold,
                  ).fontFamily,
                ),
              ),
            ),
          ),
          margin_10,
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            height: 70,
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'image/kat2.jpg',
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text(" Far Away Forest",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: GoogleFonts.roboto(
                              fontWeight: FontWeight.w900,
                            ).fontFamily,
                          ),
                        ),
                        Text("Mother Earth Sounds",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: GoogleFonts.roboto(
                            ).fontFamily,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          margin_10,
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            height: 70,
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'image/kat2.jpg',
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Electric Relaxation",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: GoogleFonts.roboto(
                            fontWeight: FontWeight.w900,
                          ).fontFamily,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Text("Mother Earth Sounds",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: GoogleFonts.roboto(
                            ).fontFamily,
                          ),
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
  var margin_100 = SizedBox(
    height: 100,
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
  var margin_3 = SizedBox(
    height: 3,
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
