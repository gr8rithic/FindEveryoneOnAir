import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  var _name;
  var _username;
  var _password;

  final namecon = TextEditingController();
  final usernamecon = TextEditingController();
  final passwordcon = TextEditingController();

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
                  const Padding(padding: EdgeInsets.all(20)),
                  Image.asset('assets/images/Travel_booking.png'),
                  TextFormField(
                    cursorColor: Theme.of(context).cursorColor,
                    controller: namecon,
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
                    controller: usernamecon,
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
                    controller: passwordcon,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.password),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Color(0xFF2962FF),
                      ),
                      helperText: 'Password',
                      suffixIcon: Icon(
                        Icons.check_circle,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2962FF)),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(60)),
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
