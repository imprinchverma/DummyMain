import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicPlayerTwo extends StatefulWidget {
  const MusicPlayerTwo({Key? key}) : super(key: key);

  @override
  _MusicPlayerTwoState createState() => _MusicPlayerTwoState();
}

class _MusicPlayerTwoState extends State<MusicPlayerTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2c159e),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            color: Color(0xff2c159e),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xff4025b5),
                        ),
                        child: Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                          color: Color(0xff4025b5),
                        ),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Search',
                            contentPadding: EdgeInsets.only(top: 15),
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                margin_30,
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 20, left: 30, right: 30),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: 40,
                          height: 40,
                          child: Icon(
                            Icons.bolt_outlined,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "Ambient",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: GoogleFonts.kronaOne().fontFamily,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "72 listener",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "created by rssems",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(110),
                  ),
                  color: Color(0xff4025b5)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 330),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(120),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40,left: 40),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'image/kat2.jpg',
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 5),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Mirage",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w900,
                                            ).fontFamily,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 23),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Else",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xffada7a7),
                                            fontFamily:
                                                GoogleFonts.roboto().fontFamily,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "2:34",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.signika(
                                  fontWeight: FontWeight.w900,
                                ).fontFamily,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    margin_5,
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'image/mili.jpg',
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 5),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Months",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w900,
                                            ).fontFamily,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 23),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Calvin Harris",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xffada7a7),
                                            fontFamily:
                                            GoogleFonts.roboto().fontFamily,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "3:36",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.signika(
                                  fontWeight: FontWeight.w900,
                                ).fontFamily,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    margin_5,
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'image/ritik.jpg',
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 5),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "New Skin",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w900,
                                            ).fontFamily,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 23),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Flume",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xffada7a7),
                                            fontFamily:
                                            GoogleFonts.roboto().fontFamily,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "2:20",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.signika(
                                  fontWeight: FontWeight.w900,
                                ).fontFamily,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    margin_5,
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'image/mili.jpg',
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 5),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Worry Bout Us",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w900,
                                            ).fontFamily,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 23),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Rosie Lowe",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xffada7a7),
                                            fontFamily:
                                            GoogleFonts.roboto().fontFamily,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "4:21",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.signika(
                                  fontWeight: FontWeight.w900,
                                ).fontFamily,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    margin_5,
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(left: 60),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.only(
                             topLeft:Radius.circular(100),
                           ),
                         color: Color(0xff170c24),
                         ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40,bottom: 25),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'image/mili.jpg',
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:20,top: 30),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "New Skin",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w900,
                                            ).fontFamily,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:20,right: 23),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Calvin Harris",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xffada7a7),
                                            fontFamily:
                                            GoogleFonts.roboto().fontFamily,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 25,right: 10),
                              child: Icon(
                                Icons.library_music_outlined,
                                color: Colors.white,
                                size: 35,
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
