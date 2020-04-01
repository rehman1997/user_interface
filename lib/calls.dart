import 'package:flutter/material.dart';
class Callscreen extends StatefulWidget {
  @override
  _CallscreenState createState() => _CallscreenState();
}

class _CallscreenState extends State<Callscreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('call',
      style: TextStyle(fontSize: 50 ),),
    );
  }
}