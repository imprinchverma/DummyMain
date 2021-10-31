import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../uIUx/homePage.dart';

class Card_Example_two extends StatefulWidget {
  @override
  _Card_Example_twoState createState() => _Card_Example_twoState();
}

class _Card_Example_twoState extends State<Card_Example_two> {
  GlobalKey _key1 = GlobalKey();
  GlobalKey _key2 = GlobalKey();
  GlobalKey _key3 = GlobalKey();
  GlobalKey _key4 = GlobalKey();
  late int selectedTabPosition = 0;
  List data = [];
  List data2 = [];

  // List icons=[
  //   Icons.video_call,
  //   Icons.
  // ]

  selectedItem(int id) {
    setState(() {
      selectedTabPosition = id;
    });
  }

  Map<int, dynamic> widgetMy = {};

  @override
  void initState() {
    data = [
      "567 Test & Pronunciation",
      "568 Test & Pronunciation",
      "569 Test & Pronunciation",
      "511 Test & Pronunciation",
      "512 Test & Pronunciation",
      "513 Test & Pronunciation",
      "514 Test & Pronunciation",
      "515 Test & Pronunciation",
    ];
    data2 = [
      "1h 17m",
      "3h 17m",
      "3h 17m",
      "5h 17m",
      "5h 17m",
      "6h 17m",
      "0h 17m",
    ];
    widgetMy = {
      0: Column(
        children: List.generate(
            7,
            (index) => ListTile(
                  leading: Icon(
                    index % 2 == 0 ? Icons.build : Icons.music_note,
                  ),
                  title: Text(data[index]),
                  subtitle: Text(data2[index]),
                )),
      ),
      1: Column(
        children: List.generate(
            7,
            (index) => ListTile(
                  leading: Icon(
                   index% 2==0 ?  Icons.video_call:Icons.music_note,
                  ),
                  title: Text(data[index]),
                  subtitle: Text(data2[index]),
                )),
      ),
      2: Column(
        children: List.generate(
            7,
            (index) => ListTile(
                  leading: Icon(
                    index % 2 ==0 ? Icons.download_done: Icons.feedback,
                  ),
                  title: Text(data[index]),
                  subtitle: Text(data2[index]),
                )),
      ),
      3: Column(
        children: List.generate(
            7,
            (index) => ListTile(
                  leading: Icon(
                   index %2 ==0 ? Icons.music_note: Icons.error,
                  ),
                  title: Text(data[index]),
                  subtitle: Text(data2[index]),
                )),
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff090b18),
      body: Stack(
        children: [
          Container(
            color: Color(0xff090b18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 30),
                  child: InkWell(
                    child: Icon(
                      Icons.arrow_back_rounded,
                      size: 35,
                      color: Colors.white,
                    ),
                    onTap: (){
                      Navigator.pop(context,MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 30),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'image/mili.jpg',
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 20, bottom: 5),
                          child: Text(
                            "Debra Wills",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.autorenew_rounded,
                                size: 20,
                                color: Colors.pinkAccent,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 5, left: 5),
                              child: Text(
                                "You finished 70% today Taks",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Color(0xff4775ff),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 20),
                              child: Text(
                                "Time",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5),
                              child: Text(
                                "2h30m",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: 1,
                            height: 50,
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                                right: 20,
                              ),
                              child: Text(
                                "Vocabulary",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30, top: 5),
                              child: Text(
                                "1253",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 330),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          key: _key1,
                          onTap: () => {selectedItem(0)},
                          child: tabWidget(selectedTabPosition == 0, "All"),
                        ),
                        InkWell(
                          key: _key2,
                          onTap: () => {selectedItem(1)},
                          child: tabWidget(selectedTabPosition == 1, "Audio"),
                        ),
                        InkWell(
                          key: _key3,
                          onTap: () => {selectedItem(2)},
                          child: tabWidget(selectedTabPosition == 2, "Video"),
                        ),
                        InkWell(
                          key: _key4,
                          onTap: () => {selectedItem(3)},
                          child: tabWidget(selectedTabPosition == 3, "Text"),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: widgetMy[selectedTabPosition],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  tabWidget(bool selectedItem, String text) {
    return Container(
      width: 60,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: selectedItem ? Colors.black12 : Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Text(
          "$text",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: selectedItem ? Colors.black : Colors.black.withOpacity(.5),
            fontWeight: selectedItem ? FontWeight.w900 : FontWeight.w500,
            fontSize: selectedItem ? 16 : 14,
          ),
        ),
      ),
    );
  }
}
