import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skipping_login/home_page.dart';
import 'package:skipping_login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home:  SplashPage(),
    );
  }
}

class SplashPage extends StatefulWidget {

  @override
  State<SplashPage> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  late String KEYLOGIN;


  @override
  void initState(){
    super.initState();

    whereToGo();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Icon(Icons.account_circle,
          color: Colors.white,
          size: 21,),
        ),
      ),
    );
  }

  void whereToGo() async{
    var sharedPref = await SharedPreferences.getInstance();

    var isLoggedIn = sharedPref.getBool(KEYLOGIN);
    Timer(Duration(seconds: 2),(){

      if(isLoggedIn!=null) {
        if (isLoggedIn) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => Homepage(),));
        } else {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => MyLogin(),));
        }
      }else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Homepage(),));
      }

    },);
  }
}
