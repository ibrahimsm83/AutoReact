
import 'package:autoreact/pages/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
AppBar MycustomAppBar(String title) {
  return AppBar(
    brightness: Brightness.light,
// backgroundColor:Colors.grey[400],
    backgroundColor: primaryColor,
    //centerTitle: true,
//SecondryColor,
//LogoIcon
//leading: Icon(Icons.menu,color: white_Color),
    title: Text(title, style: TextStyle(color: white_Color, fontSize: 18),),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Container(
            height: 25,
            width: 25,
            child: SvgPicture.asset(SvgIconsList[0], color: white_Color)),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Container(
            height: 25,
            width: 25,
            child: SvgPicture.asset(SvgIconsList[1], color: white_Color)),
//
//Icon(Icons.notifications_active_outlined,size: 30,color: Colors.grey,),
      ),
    ],
  );

}

