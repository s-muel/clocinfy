import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Vertically center the children
                crossAxisAlignment: CrossAxisAlignment
                    .center, // Horizontally center the children
                children: [
                  const Text("LOGIN"),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: "email"),
                  ),
                  TextFormField(
                    controller: _passwordController,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
