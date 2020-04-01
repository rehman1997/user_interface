import 'package:flutter/material.dart';
class Camerascreen extends StatefulWidget {
  @override
  _CamerascreenState createState() => _CamerascreenState();
}

class _CamerascreenState extends State<Camerascreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Camera', 
        style: TextStyle(
          fontSize: 50,
          backgroundColor: Colors.white,
          ),
          ),
    );
  }
}