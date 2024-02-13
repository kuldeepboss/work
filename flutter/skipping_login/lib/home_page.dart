import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Home'))),
          body: Container(
            color: Colors.green.shade100,
            child: Center(
              child: Icon(Icons.home,
              color: Colors.white.withOpacity(2),),
            ),
          ),
    );
  }
}