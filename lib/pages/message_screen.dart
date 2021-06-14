


import 'package:autoreact/utils/constants.dart';
import 'package:flutter/material.dart';

class messageScreen extends StatefulWidget {
  @override
  _messageScreenState createState() => _messageScreenState();
}

class _messageScreenState extends State<messageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: primaryColor,
        //   title: Text("CHAT"),
        // actions: [
        //
        //       Icon(Icons.search),
        //   Icon(Icons.more_vert_outlined),
        // ],
        // ),
        body: DefaultTabController(
          length: 2,
          child: MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                backgroundColor: primaryColor,
                bottom: TabBar(
                  onTap: (index) {
                    // Tab index when user select it, it start from zero
                  },
                  tabs: [
                    Tab(icon: Icon(Icons.card_travel)),
                    Tab(icon: Icon(Icons.add_shopping_cart)),
                  ],
                ),
                title: Text('Tabs Demo'),
              ),
              body: TabBarView(
                children: [
                  Center(
                      child: Text(
                        "0",
                        style: TextStyle(fontSize: 40),
                      )),
                  Center(
                      child: Text(
                        "1",
                        style: TextStyle(fontSize: 40),
                      )),
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
