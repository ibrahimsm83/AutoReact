import 'package:autoreact/pages/forgetpasswordscreen.dart';
import 'package:autoreact/pages/homescreen.dart';
import 'package:autoreact/pages/signinscreen.dart';
import 'package:autoreact/pages/signupscreen.dart';
import 'package:autoreact/pages/signupwithmedia.dart';
import 'package:autoreact/pages/splashscreen.dart';
import 'package:flutter/material.dart';
//Route NavigatorUserMediaError

class RouteGenerator {
//Control our page route flow
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case 'HomePage':
        return MaterialPageRoute(builder: (context) => HomePage());
      case 'LoginPg':
        return MaterialPageRoute(builder: (context) => LoginPg());
      case 'SiginUpPage':
        return MaterialPageRoute(builder: (context) => SiginUpPage());
      case 'SignUpWithMedia':
        return MaterialPageRoute(builder: (context) => SignUpWithMedia());
      case 'ForgetPassword':
        return MaterialPageRoute(builder: (context) => ForgetPassword());
      default:
        throw('Route name does not exit');
    }
  }
}