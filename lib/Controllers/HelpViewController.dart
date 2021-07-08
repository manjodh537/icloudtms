import 'package:flutter/material.dart';

class HelpViewController extends StatefulWidget {
  // const HelpViewController({ Key? key }) : super(key: key);

  @override
  _HelpViewControllerState createState() => _HelpViewControllerState();
}

class _HelpViewControllerState extends State<HelpViewController> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("Help"),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}