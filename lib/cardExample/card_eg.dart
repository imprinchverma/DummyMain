import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../uIUx/homePage.dart';

class CardExample extends StatefulWidget {
  @override
  _CardExampleState createState() => _CardExampleState();
}

class _CardExampleState extends State<CardExample> {

  late RenderBox renderBox;
  late Offset offset;
  GlobalKey _key1 = GlobalKey();
  GlobalKey _key2 = GlobalKey();
  GlobalKey _key3 = GlobalKey();
  GlobalKey _key4 = GlobalKey();
  late int selectedTabPosition=0;

  selectedItem(int id){
    setState(() {
      selectedTabPosition= id;
    });

  }
  Map<int,dynamic> dummy_widgets= {
    0: Column(
      children: List.generate(6, (index) => ListTile(
        leading: Icon(Icons.music_note,
          size: 70,
        ),
        title: Text("hello",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
        subtitle: Text("1h17m",
          style: TextStyle(
            fontSize: 14,
            color: Colors.black45,
          ),
        ),


      )),
    ),
    1: Column(
      children: List.generate(2, (index) => ListTile(
        leading: Icon(Icons.music_note,
          size: 70,
        ),
        title: Text("Music Section",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
        subtitle: Text("1h17m",
          style: TextStyle(
            fontSize: 14,
            color: Colors.black45,
          ),
        ),
      )),
    ),
    2: Column(
      children: List.generate(2, (index) => ListTile(
        leading: Icon(Icons.video_call,
          size: 70,
        ),
        title: Text("567 Text & Pronunciations",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
        subtitle: Text("1h17m",
          style: TextStyle(
            fontSize: 14,
            color: Colors.black45,
          ),
        ),
      )),
    ),
    3: Column(
      children: List.generate(7, (index) => ListTile(
        leading: Icon(Icons.video_call,
          size: 70,
        ),
        title: Text("567 Text & Pronunciations",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
        subtitle: Text("1h17m",
          style: TextStyle(
            fontSize: 14,
            color: Colors.black45,
          ),
        ),
      )),
    )
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff090b18),
      body: Stack(
        children: [
          Container(
            color: Color(0xff090b18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 20),
                  child: InkWell(
                    child: Icon(Icons.arrow_back_rounded,
                    size: 35,
                    color: Colors.white,),
                    onTap: ()
                    {
                      Navigator.pop(context,MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50,right: 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('image/mili.jpg',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Color(0xff3366ff),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(top: 20,left: 20),
                             child: Text("Time",
                               style: TextStyle(
                               fontSize: 20,
                               fontFamily: GoogleFonts.roboto().fontFamily,
                                 color: Colors.white,
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 10,top: 5),
                             child: Text("2h30m",
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
                          color: Color(0xff4578fe),
                      ),
                       ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20,right: 20,),
                            child: Text("Vocabulary",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: GoogleFonts.roboto().fontFamily,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30,top: 5),
                            child: Text("1253",
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
                  margin_30,
                  Text("You earned 140 point from today Tasks",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  margin_20,
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(left: 20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Container(
                           width: 150,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(20),
                             ),
                            color: Color(0xff4775ff)
                           ),
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(top: 20,left: 20),
                                     child: Icon(Icons.autorenew_rounded,
                                     size: 35,
                                     color: Colors.white,
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 20,left: 5),
                                     child: Text("Listening",
                                     style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 14,
                                     ),
                                     ),
                                   ),
                                 ],
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 10,right: 40),
                                 child: Text("70%",
                                   style: TextStyle(
                                     fontSize: 30,
                                     color: Colors.white,
                                     fontWeight: FontWeight.w800,
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ),
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20),
                                ),
                                color: Color(0xff4775ff)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20,left: 20),
                                      child: Icon(Icons.autorenew_rounded,
                                        size: 35,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20,left: 5),
                                      child: Text("Listening",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,right: 40),
                                  child: Text("70%",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ),
                  ),
                  margin_20,
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(left: 20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20),
                                ),
                                color: Color(0xff4775ff)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20,left: 20),
                                      child: Icon(Icons.autorenew_rounded,
                                        size: 35,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20,left: 5),
                                      child: Text("Listening",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,right: 40),
                                  child: Text("70%",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20),
                                ),
                                color: Color(0xff4775ff)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20,left: 20),
                                      child: Icon(Icons.autorenew_rounded,
                                        size: 35,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20,left: 5),
                                      child: Text("Listening",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,right: 40),
                                  child: Text("70%",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ),
                  ),
                  margin_10,
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                       color: Colors.white,
                      ),
                      child: Container(
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 30,right: 30,top: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        key: _key1,
                                        onTap: () => {selectedItem(0)},
                                        child: tabWidget(selectedTabPosition==0,"All"),
                                      ),
                                      InkWell(
                                        key: _key2,
                                        onTap: () => {selectedItem(1)},
                                        child: tabWidget(selectedTabPosition==1,"Audio"),
                                      ),
                                      InkWell(
                                        key: _key3,
                                        onTap: () => {selectedItem(2)},
                                        child: tabWidget(selectedTabPosition==2,"Video"),
                                      ),
                                      InkWell(
                                        key: _key4,
                                        onTap: () => {selectedItem(3)},
                                        child: tabWidget(selectedTabPosition==3,"Text"),
                                      ),
                                    ],

                                  ),
                                ),
                               Expanded(
                                 child: SingleChildScrollView(
                                   child:  dummy_widgets[selectedTabPosition],
                                 ),
                               ),
                              ],
                            ),
                          ],
                        ),
                      ),
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

  Widget tabWidget(bool isSelected, String text){
    return Container(
      width: 60,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20),
        ),
        color: isSelected? Colors.black12: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Text("$text",
          textAlign: TextAlign.center,
          style: TextStyle(
          color: isSelected? Colors.black: Colors.black.withOpacity(.5),
          fontWeight: isSelected? FontWeight.w900: FontWeight.w500,
          fontSize: isSelected? 16: 14,
        ),
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
