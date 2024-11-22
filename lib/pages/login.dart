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
  bool _isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // Oval background
        ClipPath(
          clipper: OvalClipper(),
          child: Container(
            height: 250, // Height of the oval
            color: Colors.blue,
          ),
        ),
        // Image positioned slightly below the oval
        // Positioned(
        //   top: 150, // Adjust this value to move the image out of the oval
        //   left: 0,
        //   right: 0,
        //   child: Center(
        //     child: Image.asset(
        //       'assets/images/onload.png',
        //       height: 80, // Adjust size as needed
        //       width: 80,
        //     ),
        //   ),
        // ),
        // Form positioned below the image
        Positioned(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 85,
                left: 23.0,
                right: 23.0), // Form starts below the image
            child: SafeArea(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/images/onload.png',
                          height: 100, // Adjust size as needed
                          width: 100,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 40),
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text('Email/Phone'),
                      ),
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          fillColor: Color(0x4DD9D9D9),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16), // Space between fields
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text('Password'),
                      ),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          fillColor: Color(0x4DD9D9D9),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value:
                                _isChecked, // Boolean value that tracks whether the checkbox is checked
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                            activeColor: Colors.blue,
                          ),
                          const Text(
                              "Remember me"), // Text for the "Remember me" label
                        ],
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: SizedBox(
                          height: 60,
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {
                              // Here am using routes
                              Navigator.pushNamed(context, '/loginPage');
                            },
                            style: TextButton.styleFrom(
                                backgroundColor: const Color(0xFF007AD9),
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(fontSize: 16),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4))),
                            child: const Text("Login"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

// oval clip class
class OvalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // Start from the top left
    path.lineTo(0, 0);

    // Create an arc to form the oval shape at the bottom
    path.quadraticBezierTo(
      size.width / 2,
      size.height + 20, // The apex of the curve (control point)
      size.width, 0,
      // End point on the top right
    );

    path.close(); // Close the path to form the shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
