import 'package:flutter/material.dart';
import 'package:hero_animate/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: Container(
      child: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context) => Detailpage(),
                ));
          },
          child: Hero(
            tag: 'background',
            child: Image.asset('assets/images/logo.jpeg',
            width: 150,
              height: 100,
            ),
          ),
        ),
      ),
      )
    );
  }
}
