
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key:key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyHomePageState(); 
}

class _MyHomePageState extends State<MyHomePage> {
    var wtController = TextEditingController();
    var ftController = TextEditingController();
    var inController = TextEditingController();

    String result = "Result";
    Color bgcolor = Colors.orange;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('YourBMI'),
      ),
      body:Container(
        color: bgcolor,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Color(0xfffddb92),Color(0xfffcb69f),
                ],
                  center: Alignment.bottomCenter,
                  stops: [0.0,1.0]
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text('BMI',
                 style: TextStyle(
                   fontSize: 34,fontWeight: FontWeight.w700
               ),),
               const SizedBox(
                 height: 30,
               ),
               TextField(
               controller: wtController,
                 decoration: const InputDecoration(
                   label: Text('Enter your widget(in kgs'),
                 ),
                 keyboardType: TextInputType.number,
               ),
                const SizedBox(
                 height: 11,
               ),
               TextField(
                 controller: ftController,
                 decoration: const InputDecoration(
                     label: Text('Enter your height(in feet'),
                 ),
                 keyboardType: TextInputType.number,
               ),
                  const SizedBox(
                    height: 16,
                  ),
               TextField(
                 controller: inController,
                 decoration: const InputDecoration(

                     label: Text('Enter your width(in Inch'),
                 ),
                 keyboardType: TextInputType.number,
               ),
               const SizedBox(
                 height: 16,
               ),
               ElevatedButton(
                   onPressed: (){
                var wt = wtController.text.toString();
                var ft = ftController.text.toString();
                var inch = inController.text.toString();

                if (wt!="" && ft!="" && inch!=""){

                  var iWt = int.parse(wt);
                  var ift = int.parse(ft);
                  var iInch = int.parse(inch);

                  var tInch = (ift*12) + iInch;
                  var tCm = tInch*2.54;
                  var tM = tCm/100;

                  var bmi = iWt/(tM*tM);

                  var msg = "";

                  if(bmi>25){
                    msg = "you're overweight!!";
                    bgcolor = Colors.orange.shade200;
                  }else if(bmi<18){
                    msg = "your underWeight!!";
                    bgcolor = const Color.fromARGB(255, 240, 45, 45);
                  }else{
                    msg = "you're healthy!!";
                    bgcolor = Colors.green.shade200;
                  }
                  setState(() {
                    result = "$msg \n Your BMI is : ${bmi.toStringAsFixed(4)}";
                  });
                }else{
                  setState(() {
                    result = "please fill all the required blanks!!";
                  });
                 }
                   },child:  const Text('calculate'),
                 ),
               Text(result,
                 style: const TextStyle(
                     fontSize: 30,
                     color: Colors.purple),
               ),
             ],
            ),
          ),
        ),
      ),
    );
  }
}