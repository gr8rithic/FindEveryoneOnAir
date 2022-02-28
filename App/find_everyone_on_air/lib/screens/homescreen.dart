import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Colors.white,
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(padding: EdgeInsets.all(90)),
              Image.asset('assets/images/journey.png'),
              const Padding(padding: EdgeInsets.all(40)),
              const Text(
                "Let's Find Things On Air!!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    shadows: [
                      Shadow(
                          color: Color.fromARGB(255, 39, 150, 230),
                          blurRadius: 16)
                    ]),
              ),
              const Text(""),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
              const Text(
                "adipiscing elit. Tellus praesent purus tua",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
              const Text(
                "tincidunt ut cursus vitae. Nisl, vitae nulla tu",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
              const Text(
                "lectus tortor, est a aliquam. Pretium netus",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
              const Padding(padding: EdgeInsets.all(50)),
              ButtonTheme(
                minWidth: 350.0,
                height: 60.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.blueAccent[700],
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
