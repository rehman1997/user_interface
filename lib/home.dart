import 'package:flutter/material.dart';

import 'calls.dart';
import 'camera.dart';
import 'chats.dart';
import 'status.dart';
//import 'main.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>  with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(vsync: this,initialIndex: 1,length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text('WhatUp'),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search), 
        onPressed: () {}),
        Icon(Icons.more_vert)
      ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: 'CHATS'),
            Tab(text: 'STATUS'),
            Tab(text: 'CALLS'),
            
          ],
        ),
        
      ),
      body: TabBarView(
        controller: _tabController,
        
        children: <Widget>[
          
                        
          Camerascreen(),
          Chatscreen(),
          Statusscreen(),
          Callscreen(),
      ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen[800],
        child: Icon(Icons.message),

        onPressed: (){
          
        },
        ),
    );
  }
}