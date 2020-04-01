import 'package:flutter/material.dart';
import 'home.dart';
import 'package:flutter/widgets.dart';
void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       //debugShowCheckedModeBanner: false,
      title: 'whatup',
      theme: ThemeData(
        //primaryColor: Colors.lightGreenAccent[800],
        //accentColor: Colors.greenAccent[900],
        backgroundColor: Colors.green[800],     ),
      
      home: Homepage(),
      
    );
  }
}
  

