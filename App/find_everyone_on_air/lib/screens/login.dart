import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
          color: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Padding(padding: EdgeInsets.all(50)),
                Image.asset('assets/images/Travel_booking.png'),
                const Padding(padding: EdgeInsets.all(10)),
                TextFormField(
                  cursorColor: Theme.of(context).cursorColor,
                  initialValue: 'Email ID',
                  decoration: InputDecoration(
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
                  initialValue: 'Password',
                  decoration: InputDecoration(
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
                const Text('Does not have account?'),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Color(0xFF2962FF),
                  ),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/registration');
                  },
                )
              ]),
        ),
      ),
    );
  }
}
