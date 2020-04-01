import 'package:flutter/material.dart';
class Statusscreen extends StatefulWidget {
  @override
  _StatusscreenState createState() => _StatusscreenState();
}

class _StatusscreenState extends State<Statusscreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Status',
      style: TextStyle(fontSize: 50),),
    );
  }
}