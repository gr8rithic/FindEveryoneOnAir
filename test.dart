import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  List mydata = [];

  void getInfo() async {
    String url = 'https://flutter-widgets.deta.dev/widgets/';
    var response = await http.get(Uri.parse(url));
    var body = json.decode(response.body);
    print(body);
    setState(() {
      mydata = body;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body:
          Container(child: Center(child: mydata[1]['name']!=null ? Text(mydata[1]['name']):Text('Anuja'))),
    );
  }
}
