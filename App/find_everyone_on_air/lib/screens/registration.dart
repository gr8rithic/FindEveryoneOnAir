import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

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
                  Image.asset('assets/images/Travel_booking.png'),
                  TextFormField(
                    cursorColor: Theme.of(context).cursorColor,
                    initialValue: 'Name',
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: 'Name',
                      labelStyle: TextStyle(
                        color: Color(0xFF2962FF),
                      ),
                      helperText: 'Name',
                      suffixIcon: Icon(
                        Icons.check_circle,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2962FF)),
                      ),
                    ),
                  ),
                  TextFormField(
                    cursorColor: Theme.of(context).cursorColor,
                    initialValue: 'Email Id',
                    decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      labelText: 'Email Id',
                      labelStyle: TextStyle(
                        color: Color(0xFF2962FF),
                      ),
                      helperText: 'Email Id',
                      suffixIcon: Icon(
                        Icons.check_circle,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2962FF)),
                      ),
                    ),
                  ),
                  TextFormField(
                    cursorColor: Theme.of(context).cursorColor,
                    initialValue: 'Username',
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        color: Color(0xFF2962FF),
                      ),
                      helperText: 'Username',
                      suffixIcon: Icon(
                        Icons.check_circle,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2962FF)),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(80)),
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
                        "Create Account",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  const Text('Have an Account?'),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: const Color(0xFF2962FF),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                  ),
                ]),
          ),
        ));
  }
}
