import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class FinalDataPage extends StatefulWidget {
  const FinalDataPage({Key? key}) : super(key: key);

  @override
  State<FinalDataPage> createState() => _FinalDataPageState();
}

class _FinalDataPageState extends State<FinalDataPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        title: const Text("Data Visualisation Page"),
      )),
    );
  }
}
