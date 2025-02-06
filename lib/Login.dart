import 'package:flutter/material.dart';
import 'package:login_signup_ui1/Signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                      'Welcome!',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    //////////////////////////////// Email and password section
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
                      height: 40,
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
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.indigo, fontSize: 16),
                        )
                      ],
                    ),
                    SizedBox(height: 80),
                    //////////////////////////////// Login button section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Signup(),
                                ));
                          },
                          child: Container(
                            width: 170,
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 8, bottom: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ));
                          },
                          child: Container(
                            width: 170,
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 8, bottom: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.indigo,
                            ),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
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
