import 'package:flutter/material.dart';
import 'package:fraudsentry/screen/auth/signin.dart';
import 'package:fraudsentry/screen/auth/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
            // signuppage()
            signinpage());
  }
}