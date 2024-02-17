import 'package:app/Login/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI Tutorial',
      theme: ThemeData(
        fontFamily: "SF-pro-Text"),
      home: const LoginPage(),
    );
  }
}
