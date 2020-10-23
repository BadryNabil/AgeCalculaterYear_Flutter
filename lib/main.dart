import 'package:flutter/material.dart';
import 'package:fluttertest/age.dart';

void main() {
  runApp(Myapp());
}
class Myapp extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return MyAppLess();
  } 
}
class MyAppLess extends State<Myapp>
{
  int str = 0;
  var data = TextEditingController();
  bool passVisibility = true;
  @override
  Widget build (BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // show or display mode banner
      home:Scaffold(
      appBar: AppBar( 
        title: Text('First App'),
        backgroundColor: Colors.green,
        elevation: 0.0, //shadow
        centerTitle: true, 
        ),
        body: Container(
          child:SingleChildScrollView(
            child:Column(children: [
          Container(
           child: TextField(
             decoration:InputDecoration(
               labelText: "birthYear",
               labelStyle:TextStyle(fontSize: 40 ) ,
               hintText: "Enter Your birthYear",
               hintStyle: TextStyle(fontSize: 30),
               icon: Icon(Icons.format_list_numbered),
             ) ,
             keyboardType: TextInputType.number,
             controller: data,
          ),
          ),
          Container(
            child:RaisedButton(
              child: Text("Sumbit",
              style: TextStyle(color: Colors.white,
              ),
              ),
              onPressed: () {
                setState(() {
                  AgeCalculater(int.parse(data.text));
                  str = AgeCalculater.age;
                });
              },
              color: Colors.blue,
                ) ,
            ),
            Container(
              child: Text("Your Age is $str Years Old"
              ,style: TextStyle(color: Colors.green ,
              fontSize: 25
              ),
              ),
            )
        ],
      ), 
            ),
        ),
    ),
    );
  }
}

