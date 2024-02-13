import 'package:flutter/material.dart';
import 'package:untitled1/main.dart';

class Profilescreen extends StatelessWidget{
  var nameFromHome;

  Profilescreen(this.nameFromHome);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('myProfile'),
      ),
      body: Container(
        color: Colors.blueGrey.shade200,
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("welcome, $nameFromHome",style: TextStyle(fontSize: 34),),
              ElevatedButton(onPressed: (){
              Navigator.pop(context);
              }, child: Text('Back'),
                       ),
            ],
          ),
        ),
       ),
    );
  }
}

