import 'package:flutter/material.dart';

class FinalDataPage extends StatelessWidget {
  const FinalDataPage({Key? key}) : super(key: key);

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
