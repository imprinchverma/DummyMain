import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackExample extends StatefulWidget {
  const StackExample({Key? key}) : super(key: key);

  @override
  _StackExampleState createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xffe0e0e0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.person_outline,
                      size: 40,
                    ),
                    Icon(
                      Icons.credit_card,
                      size: 40,
                    ),
                    Icon(
                      Icons.attach_money_rounded,
                      size: 40,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xff0181a4a),
                          ),
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: 0,
            bottom: 00,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 380),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 70),
                            child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Activities",
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          margin_20,
                          Stack(
                            children: [
                              Container(
                                width: 170,
                                height: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    bottomRight: Radius.circular(25),
                                  ),
                                  color: Colors.orange,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      Icons.attach_money_sharp,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    bottomRight: Radius.circular(25),
                                  ),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 30, right: 5),
                                          child: Container(
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Loan",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily:
                                                      GoogleFonts.didactGothic()
                                                          .fontFamily,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Container(
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "Pending",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily:
                                                      GoogleFonts.didactGothic()
                                                          .fontFamily,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 35, right: 10),
                                          child: Container(
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Details",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily:
                                                      GoogleFonts.didactGothic()
                                                          .fontFamily,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 10),
                                          child: Container(
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "\$2,839,2",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily:
                                                      GoogleFonts.didactGothic()
                                                          .fontFamily,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          margin_20,
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Container(
                              width: 160,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xff0181a4a),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_upward_rounded,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Topup",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontFamily:
                                          GoogleFonts.didactGothic().fontFamily,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              child: Align(
                                child: Text(
                                  "Monthly Report",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily:
                                        GoogleFonts.didactGothic().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          margin_20,
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  width: 130,
                                  height: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      topLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(40),
                                      bottomLeft: Radius.circular(40),
                                    ),
                                    color: Color(0xff0181a4a),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Icon(
                                          Icons.tv,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: Container(
                                  width: 130,
                                  height: 190,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      topLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(40),
                                      bottomLeft: Radius.circular(40),
                                    ),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xf767676),
                                        blurRadius: 2,
                                        spreadRadius: 0.0,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Text(
                                          "18",
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontFamily:
                                                GoogleFonts.didactGothic()
                                                    .fontFamily,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Text(
                                          "Request",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily:
                                                GoogleFonts.didactGothic()
                                                    .fontFamily,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, left: 10),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Requests Channel",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily:
                                                  GoogleFonts.didactGothic()
                                                      .fontFamily,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: 20, left: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  child: Column(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 10.0,
                                                        backgroundImage:
                                                            AssetImage(
                                                                'image/kat2.jpg'),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  child: Column(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 10.0,
                                                        backgroundImage:
                                                            AssetImage(
                                                                'image/mili.jpg'),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  child: Column(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 10.0,
                                                        backgroundImage:
                                                            AssetImage(
                                                                'image/ritik.jpg'),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 10),
                                                        child: Container(
                                                          width: 30,
                                                          height: 30,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        60),
                                                            color: Colors.black,
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              "+14",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
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
                                    ],
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
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
              color: Color(0xff0181a4a),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Text(
                      "Welcome Back!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80, right: 60),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Text(
                            "Hira R,",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        margin_3,
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "\$4,763.40",
                            style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        margin_5,
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            "Available Balance",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
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
          Positioned(
            top: 180,
            left: 20,
            child: Container(
              width: 100,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                  image: AssetImage("image/kat2.jpg"),
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
