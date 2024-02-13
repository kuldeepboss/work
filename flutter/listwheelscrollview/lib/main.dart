import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>
   with SingleTickerProviderStateMixin {

  var arrData = [
    {
      'name': 'boss',
      'mobno': '7016688687',
      'unread': '30',
    },
    {
      'name': 'kishan',
      'mobno': '8656355597',
      'unread': '20',
    },
    {
      'name': 'ram',
      'mobno': '8757845632',
      'unread': '12',
    },
    {
      'name': 'vishal',
      'mobno': '9638754214',
      'unread': '25',
    },
    {
      'name': 'sahil',
      'mobno': '9286354179',
      'unread': '27',
    },
    {
      'name': 'raj',
      'mobno': '9658714235',
      'unread': '29',
    },
    {
      'name': 'kumar',
      'mobno': '7896541266',
      'unread': '22',
    },
    {
      'name': 'kushal',
      'mobno': '8529637418',
      'unread': '12',
    },
    {
      'name': 'Priya',
      'mobno': '9876543210',
      'unread': '5'
    },
    {
      'name': 'Rajesh',
      'mobno': '8765432109',
      'unread': '2'
    },
    {
      'name': 'Neha',
      'mobno': '7654321098',
      'unread': '7'
    },
    {
      'name': 'Amit',
      'mobno': '6543210987',
      'unread': '3'
    },
    {
      'name': 'Ananya',
      'mobno': '5432109876',
      'unread': '1'
    },

  ];

  late Animation _animation;
  late Animation colorAnimation;
  late AnimationController _animationController;
  var  nameController = TextEditingController();
  static const String KEYNAME ="name";
  var nameValue = "no value saved";
  var listRadius =[150.0,200.0,250.0,300.0,350.0];
  @override
  void initState() {
    // TODO: implement initstate
    super.initState();
    getvalue();

    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 5), lowerBound: 0.5);
    //_animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);//s
    /*colorAnimation =ColorTween(begin: Colors.blue,end: Colors.orange).animate(_animationController);*/

    _animationController.addListener(() {
       /*print(_animation.value);*/
       setState(() {

       });
     });

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapping list'),
      ),
      body:Container(
        child: Center(
          child: SizedBox(
            width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    label: Text('name'),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                ElevatedButton(onPressed: ()async{
                  var name = nameController.text.toString();

                  var prefs = await SharedPreferences.getInstance();

                  prefs.setString(KEYNAME,nameController.text.toString());
                }, child: Text('save')),
                SizedBox(
                  height: 11,
                ),
                Text(nameValue)
              ],
            ),
          ),
        ),
      )
      /* Center(
        child: Stack(
          alignment: Alignment.center,
        children:[
          buildMyContiner(listRadius[0]),
          buildMyContiner(listRadius[1]),
          buildMyContiner(listRadius[2]),
          buildMyContiner(listRadius[3]),
          buildMyContiner(listRadius[4]),
          Icon(Icons.add_call,color: Colors.green,size: 34,),
        ]
        ),
      ),*/
      /*Container(
        child: ListView(
          children: arrData.map((value) =>
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(value['name'].toString()),
                subtitle: Text(value['mobno'].toString()),
                trailing: CircleAvatar(
                  radius: 12,
                    backgroundColor: Colors.green,
                    child: Text(value['unread'].toString())),
              )
          ).toList()
        ),
      )*/
    );
  }
  Widget buildMyContiner(radius){
    return  Container(
      width: radius*_animationController.value,
      height: radius*_animationController.value,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange.withOpacity(1.0 - _animationController.value)
      ),
    );
  }

  void getvalue() async{

    var prefs = await SharedPreferences.getInstance();
    
    var getName = prefs.getString(KEYNAME);

    nameValue =getName ?? "no Value saved";
    setState(() {

    });
  }
}
