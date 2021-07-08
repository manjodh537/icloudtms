import 'package:flutter/material.dart';

class HistoryViewController extends StatefulWidget {
  // const HistoryViewController({ Key? key }) : super(key: key);

  @override
  _HistoryViewControllerState createState() => _HistoryViewControllerState();
}

class _HistoryViewControllerState extends State<HistoryViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}