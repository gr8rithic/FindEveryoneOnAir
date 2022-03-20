import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _username;

  var _password;

  final usernamecon = TextEditingController(text: "Email ID");

  final passwordcon = TextEditingController(text: "Password");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Padding(padding: EdgeInsets.all(40)),
                Image.asset('assets/images/login.png'),
                const Padding(padding: EdgeInsets.all(10)),
                TextFormField(
                  // ignore: deprecated_member_use
                  cursorColor: Theme.of(context).cursorColor,
                  controller: usernamecon,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email),
                    labelText: 'Email',
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
                const Padding(padding: EdgeInsets.all(70)),
                ButtonTheme(
                  minWidth: 350.0,
                  height: 60.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.blueAccent[700],
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                      setState(() {
                        _username = usernamecon.text;
                        _password = passwordcon.text;
                      });
                    },
                    child: const Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(20)),
                const Text('Do not have account?'),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: const Color(0xFF2962FF),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/registration');
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
