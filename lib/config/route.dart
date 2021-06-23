import 'package:autoreact/pages/about_screen.dart';
import 'package:autoreact/pages/auctions_screen.dart';
import 'package:autoreact/pages/cardelars_screen.dart';
import 'package:autoreact/pages/carlisting_screen.dart';
import 'package:autoreact/pages/chat_screen.dart';
import 'package:autoreact/pages/findfriend_screen.dart';
import 'package:autoreact/pages/forgetpasswordscreen.dart';
import 'package:autoreact/pages/homescreen.dart';
import 'package:autoreact/pages/mainhomescreen.dart';
import 'package:autoreact/pages/message_screen.dart';
import 'package:autoreact/pages/myfavourites_screen.dart';
import 'package:autoreact/pages/signinscreen.dart';
import 'package:autoreact/pages/signupscreen.dart';
import 'package:autoreact/pages/signupwithmedia.dart';
import 'package:autoreact/pages/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:autoreact/pages/audio_call_screen.dart';
//Route NavigatorUserMediaError

class RouteGenerator {
//Control our page route flow
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case 'HomePage':
        return MaterialPageRoute(builder: (context) => HomePage());
        //MainHomeScreen
      case 'MainHomeScreen':
        return MaterialPageRoute(builder: (context) => MainHomeScreen());
      case 'LoginPg':
        return MaterialPageRoute(builder: (context) => LoginPg());
      case 'SiginUpPage':
        return MaterialPageRoute(builder: (context) => SiginUpPage());
      case 'SignUpWithMedia':
        return MaterialPageRoute(builder: (context) => SignUpWithMedia());
      case 'ForgetPassword':
        return MaterialPageRoute(builder: (context) => ForgetPassword());
      case 'messageScreen':
        return MaterialPageRoute(builder: (context) => messageScreen());
        //MyFavoutiresPg
      case 'MyFavoutiresPg':
        return MaterialPageRoute(builder: (context) => MyFavoutiresPg());
        //AuctionsScreenpg
      case 'AuctionsScreenpg':
        return MaterialPageRoute(builder: (context) => AuctionsScreenpg());
        //findFriendspg
      case 'FindFriendspg':
        return MaterialPageRoute(builder: (context) => FindFriendspg());
        //CarDelarspg
      case 'CarDelarspg':
        return MaterialPageRoute(builder: (context) => CarDelarspg());
        //CarListingpg
      case 'CarListingpg':
        return MaterialPageRoute(builder: (context) => CarListingpg());
        //aboutscreen
      case 'aboutscreen':
        return MaterialPageRoute(builder: (context) => aboutscreen());
        //ChatPage
      case 'ChatPage':
        return MaterialPageRoute(builder: (context) => ChatPage());
        //AudioCallScreen
      case 'AudioCallScreen':
        return MaterialPageRoute(builder: (context) => AudioCallScreen());
      default:
        throw('Route name does not exit');
    }
  }
}