// My application
import 'package:flutter/material.dart';

import 'Login.dart';
import 'Signup.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Colors.blue,
          centerTitle: true,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            elevation: 4.0,
          ),
        ),
      ),
      title: 'Login Signup UI 1',
      debugShowCheckedModeBanner: false,
      home: Signup(),
    );
  }
}
