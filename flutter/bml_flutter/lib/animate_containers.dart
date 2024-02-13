import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';


class animate extends StatefulWidget {
  @override
  State<animate> createState() => _animateState();
}
  @override
   class _animateState extends State<animate> {
    var _width = 200.0;

    var _height= 100.0;

    bool flag = true;

    var myDecor = BoxDecoration(
      borderRadius: BorderRadius.circular(2),
      color: Colors.blueGrey,
    );
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Foo Animations'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                  width: _width,
                  height: _height,
                  curve: Curves.bounceOut,
                  decoration: myDecor,
                  duration: Duration(seconds: 2)

              ),
              ElevatedButton(onPressed: () {
                setState(() {
                  if (flag) {
                    _width = 100.0;
                    _height = 200.0;
                    myDecor = BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.orange,
                    );
                    flag = false;
                  } else {
                    _width = 200.0;
                    _height = 100.0;
                    myDecor = BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.blueGrey,
                    );
                    flag = true;
                  }
                });
              }, child: Text('Animate'))
            ],
          ),
        ),
      );
    }
  }