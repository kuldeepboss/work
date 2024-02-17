import 'package:flutter/material.dart';
import 'package:login_flutter/login.dart';
import 'package:login_flutter/password_rest.dart';
import 'package:login_flutter/register.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => MyLogin(),
      'register': (context) => MyRegister(),
      'Forget': (context) => ForgotPasswordScreen(),
    },
  ));
}