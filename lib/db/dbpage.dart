import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:login_page/db/databaseHelper.dart';
import 'package:sqflite/sqflite.dart';



class DbHomePage extends StatefulWidget {
  const DbHomePage({Key? key}) : super(key: key);

  @override
  _DbHomePageState createState() => _DbHomePageState();
}

class _DbHomePageState extends State<DbHomePage> {
  File? image;
  TextEditingController movieName = TextEditingController();
  TextEditingController directorName = TextEditingController();
  TextEditingController year = TextEditingController();
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sqflite Example"),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
         child: Column(
            children: [
              margin_20,
              Container(
                margin: EdgeInsets.only(
                    left: 40, right: 40, top: 10, bottom: 10),
                child: TextFormField(
                  controller: movieName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Movie Name',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.movie,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              margin_20,
              Container(
                margin: EdgeInsets.only(
                    left: 40, right: 40, top: 10, bottom: 10),
                child: TextFormField(
                  controller: directorName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Director Name',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              margin_20,
              ElevatedButton(
                child: Text("Choose Image"),
                onPressed: () => pickImage(ImageSource.gallery),
              ),
              margin_20,
              image != null
                  ? Image.file(
                image!,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              )
                  : FlutterLogo(
                size: 120,
              ),
              margin_20,
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  children: [
                    ElevatedButton(
                      child: Text("Choose Date"),
                      onPressed: () => selectDate(context),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                      ),
                      child: Center(
                          child: Text(
                              dateTime.day.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: Text(
                          dateTime.month.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 50,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: Text(
                          dateTime.year.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              margin_20,
              ElevatedButton(
                child: Text("insert"),
                onPressed: () async{
                  List<Map<String,dynamic>> insert = await DataBaseHelper.instance.queryAll();
                  print(insert);
                } ,
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

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) {
        return "Please Selected the image";
      }
      final tempImage = File(image.path);
      setState(() => this.image = tempImage);
    } on PlatformException catch (e) {
      print('Failed to pick image $e');
    }
  }

  Future<Null> selectDate(BuildContext context) async{
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: DateTime(1948),
        lastDate: DateTime(2090)
    );
    if(pickedDate !=null)
    {
      setState(() {
        dateTime =pickedDate;
        print(dateTime.toString());
      });
    }
  }
}
