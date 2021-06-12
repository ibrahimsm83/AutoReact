


import 'package:autoreact/utils/constants.dart';
import 'package:flutter/material.dart';

class messageScreen extends StatefulWidget {
  @override
  _messageScreenState createState() => _messageScreenState();
}

class _messageScreenState extends State<messageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("CHAT"),
      actions: [
            Icon(Icons.search),
      ],
      ),

    );
  }
}
