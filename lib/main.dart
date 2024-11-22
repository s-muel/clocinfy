import 'package:clockify/pages/login.dart';
import 'package:clockify/pages/onboarding.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clokify',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // the home is where the program starts
      home: const OnBoardingPage(),
      routes: {
        '/loginPage': (context) => const LoginPage(),
      },
    );
  }
}
