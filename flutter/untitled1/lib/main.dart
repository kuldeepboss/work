import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/my_profile_screen.dart';
import 'package:untitled1/splash_screen.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class splashsceen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return splashsceen();
  }

}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var nameController = TextEditingController();

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('basic calculations'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 300,
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('DashBoard Screen', style: TextStyle(
                fontSize: 30,
              ),),
              SizedBox(height: 15,),
              TextField(
                controller:nameController ,
              ),
              SizedBox(height:15),
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Profilescreen(nameController.text.toString()),));
              }, child: Text('MY profile'))
            ],
          ),
        ),
      ),
    );
  }
}



