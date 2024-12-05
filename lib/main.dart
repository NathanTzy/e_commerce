import 'package:e_commerce/Pages/pages.dart';
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
      debugShowCheckedModeBanner: false,
      routes: {
        '/homePage': (context) => HomePage(),
        '/signIn': (context) => SigninPages(),
        '/signUp': (context) => Signup(),
        '/detailChat': (context) => DetailChat(),
        '/editPro': (context) => Editprofile(),
      },
      home: HomePage(),
    );
  }
}
