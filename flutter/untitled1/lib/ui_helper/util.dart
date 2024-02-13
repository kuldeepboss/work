import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle mTextstyle11({Color textColor=Colors.black,FontWeight fontWeight = FontWeight.normal})
{
  return TextStyle(
    fontSize: 11,
    color: textColor,
    fontWeight: fontWeight
  );
}
TextStyle mTextstyle21({Color textColor=Colors.black,FontWeight fontWeight = FontWeight.normal})
{
  return TextStyle(
    fontSize: 21,
      color: textColor,
      fontWeight: fontWeight

  );
}
TextStyle mTextstyle31({Color textColor=Colors.black,FontWeight fontWeight = FontWeight.normal}){
  return TextStyle(
    fontSize: 30,
      color: textColor,
      fontWeight: fontWeight
  );
}
class CatItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 3,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(itemBuilder: (context,index) => Padding(
          padding: const EdgeInsets.all(11.8),
          child: SizedBox(
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.green,
            ),

          ),
        ),
            itemCount: 20, scrollDirection: Axis.horizontal
        ),
      ),
    );

  }
}
class contorl extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Container(
        color: Colors.orange,
        child: ListView.builder(itemBuilder: (context,index) => Padding(
          padding: const EdgeInsets.all(11.9),
          child: ListTile(
            leading:CircleAvatar(
              backgroundColor: Colors.green,
            ),
            title :Text('Name'),
            subtitle: Text('Mob No'),
            trailing: Icon (Icons.download),
          ),
        )),
      ),
    );

  }
}

class subcatItes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.blueGrey,
        child: ListView.builder(itemBuilder: (context,index) =>Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.blue,
            ),
          ),
        ),itemCount: 10, scrollDirection: Axis.horizontal
        ),
      ),
    );
  }
}
class Bottonmeu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.green,
        child: ListView.builder(itemBuilder: (context,index) =>Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blue,
            ),
          ),
        ),itemCount: 10, scrollDirection: Axis.horizontal
        ),
      ),
    );
  }
}
/*Container(
          color: Colors.blue.shade100,
        child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no1Controller,
                    cursorColor: Colors.black,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no2controller,
                    cursorColor: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2controller.text.toString());

                        var sum = no1+no2;

                        result = "this sum of $no1 and $no2 is $sum";

                        setState(() {});
                       },
                           child: Text('Add'),
                       ),

                       ElevatedButton(onPressed: (){
                         var no1 = int.parse(no1Controller.text.toString());
                         var no2 = int.parse(no2controller.text.toString());

                         var sum = no1+no2;

                         result = "this sum of $no1 and $no2 is $sum";

                         setState(() {

                         });
                       },
                           child: Text('Sum')),

                       ElevatedButton(onPressed: (){
                         var no1 = int.parse(no1Controller.text.toString());
                         var no2 = int.parse(no2controller.text.toString());

                         var product = no1*no2;

                         result = "this product of $no1 and $no2 is $product";

                         setState(() {

                         });
                       },
                           child: Text('mult')),

                       ElevatedButton(onPressed: (){
                         var no1 = int.parse(no1Controller.text.toString());
                         var no2 = int.parse(no2controller.text.toString());

                         var time = no1/no2;

                         result = "this time of $no1 and $no2 is ${time.toStringAsFixed(2)}";

                         setState(() {

                         });
                       },
                           child: Text('div')),
                     ],
                    ),
                  ),

                  Padding(padding: EdgeInsets.all(20),
                    child: Text(result,style: TextStyle(fontSize: 30,color: Colors.blue),),
                  ),
                ],
              ),
            ),
        ),
      )*/

/*range formula
range function
   create  new class
   RangeValues values = RangeValues(0,1);
   widget bulid column
RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
   body : Center(
    child : RangeSlider(
    values: values,
    labels: labels,
    division:10,
    activeColor:Colors.blue,
    inactiveColor:Colors.blue.shade300,
    min :0,
    max :100,
    onChanged : (newValue){
    values =newValue;
    print('${newValue.start}, ${newValue.end}');
    setState((){'

       });
      },
    ),
  ),
 */