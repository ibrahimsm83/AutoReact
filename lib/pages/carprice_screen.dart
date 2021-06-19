import 'package:autoreact/utils/constants.dart';
import 'package:flutter/material.dart';

class CarPrice extends StatefulWidget {
  @override
  _CarPriceState createState() => _CarPriceState();
}

class _CarPriceState extends State<CarPrice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
            decoration: BoxDecoration(
              border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "Price Range",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
