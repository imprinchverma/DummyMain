import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:login_page/futureBuilderExample/userModelClass.dart';
import 'package:http/http.dart' as http;

class JsonExample extends StatefulWidget {
  const JsonExample({Key? key}) : super(key: key);

  @override
  _JsonExampleState createState() => _JsonExampleState();
}

class _JsonExampleState extends State<JsonExample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getJSONData(); //method
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getJSONData(),
              builder: (context, snapshot) {
                List<UserModelJson> _insideList =
                    snapshot.data as List<UserModelJson>;
                if (_insideList != null) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: _insideList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("id: ${_insideList[index].id}"),
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            _insideList[index].thumbnailUrl,
                          ),
                        ),
                        subtitle: Text("title: ${_insideList[index].title}"),
                      );
                    },
                  );
                } else {
                  return  CircularProgressIndicator();
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<List<UserModelJson>> getJSONData() async {
    //var uri = await http.get(Uri.https('https://jsonplaceholder.typicode.com','photos'));
    var uri = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var jsonData = jsonDecode(uri.body);
    List<UserModelJson> user = [];
    for (var u in jsonData) {
      UserModelJson userModelJson = UserModelJson(
          u['albumId'], u['id'], u['title'], u['url'], u['thumbnailUrl']);
      user.add(userModelJson);
    }

    print(user.length);
    return user;
  }
}
