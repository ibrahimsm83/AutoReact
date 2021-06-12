import 'dart:async';
import 'package:autoreact/pages/signupwithmedia.dart';
import 'package:autoreact/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    new Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => SignUpWithMedia()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('$imgpath/spsc.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: sizeheight(context) * 0.15),
                Center(
                  child: Container(
                    height: 150,
                    width: sizeWidth(context),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('$imgpath/Logoblack.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
