import 'package:clockify/pages/registration.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Center(
              child: Image.asset('assets/images/onload.png'),
            )),
            //
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    // Here am using routes
                    Navigator.pushNamed(context, '/loginPage');

                    //This is the code for using the old routing system

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const RegistrationPage(),
                    //   ),
                    // );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF007AD9),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  child: const Text("Get Started"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
