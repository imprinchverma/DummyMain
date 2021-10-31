import 'package:flutter/material.dart';


class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({Key? key}) : super(key: key);

  @override
  _FutureBuilderExampleState createState() => _FutureBuilderExampleState();
}

      Future<String> getDataFromFuture() async {
       return new Future.delayed(const Duration(seconds: 6),()=>"Future Builder Example");
      }

class _FutureBuilderExampleState extends State<FutureBuilderExample> {

   @override
   void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0e4d54),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FutureBuilder(
            future: getDataFromFuture(),
            builder: (context, snapshot) {
              if (snapshot.data != null) {
                return Center(
                  child: Text('Result: ${snapshot.data}'),
                );
              }
              return Center(
                  child: CircularProgressIndicator(),
              );
            },
          ),
        ],
      ),
    );
  }
}
