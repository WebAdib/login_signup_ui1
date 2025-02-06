import 'package:flutter/material.dart';

import 'Login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF17161A),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //////////////////////////////// Image section
              Image.asset(
                "images/pageBanner.png",
              ),
              //////////////////////////////// Welcome section
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    //////////////////////////////// Email and password section
                    Text(
                      'Name',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          // White underline when focused
                          borderSide: BorderSide(color: Colors.grey.shade800),
                        ),
                        hintText: 'Enter Name',
                        hintStyle: TextStyle(color: Color(0xF1F1F1CC)),
                        suffixIcon: Icon(Icons.email, color: Color(0xF1F1F1CC)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          // White underline when focused
                          borderSide: BorderSide(color: Colors.grey.shade800),
                        ),
                        hintText: 'Enter Email',
                        hintStyle: TextStyle(color: Color(0xF1F1F1CC)),
                        suffixIcon: Icon(Icons.email, color: Color(0xF1F1F1CC)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          // White underline when focused
                          borderSide: BorderSide(color: Colors.grey.shade800),
                        ),
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(color: Color(0xF1F1F1CC)),
                        suffixIcon: Icon(Icons.password_rounded,
                            color: Color(0xF1F1F1CC)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Confirm Password',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          // White underline when focused
                          borderSide: BorderSide(color: Colors.grey.shade800),
                        ),
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(color: Color(0xF1F1F1CC)),
                        suffixIcon: Icon(Icons.password_rounded,
                            color: Color(0xF1F1F1CC)),
                      ),
                    ),
                    SizedBox(height: 10),

                    SizedBox(height: 30),
                    //////////////////////////////// Login button section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 170,
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 8, bottom: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.indigo,
                          ),
                          child: Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    //////////////////////////////// question section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 10),
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: Colors.white24,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
