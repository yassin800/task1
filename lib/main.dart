import 'package:flutter/material.dart';
import 'package:task1/screens/onboarding.dart';
import 'package:task1/screens/register.dart';
import 'package:task1/screens/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
      routes: {
        '/signin':(context) => const SignIn(),
        '/register':(context) => const Register(), 

      },
    );
  }
}
