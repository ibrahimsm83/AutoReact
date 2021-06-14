



import 'package:autoreact/pages/homescreen.dart';
import 'package:autoreact/utils/constants.dart';
import 'package:autoreact/utils/widgets/customappbar.dart';
import 'package:autoreact/utils/widgets/postes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyFavoutiresPg extends StatefulWidget {
  @override
  _MyFavoutiresPgState createState() => _MyFavoutiresPgState();
}

class _MyFavoutiresPgState extends State<MyFavoutiresPg> {
  String favouriteicon="$imgpath/savefillicon.svg";
  @override
  Widget build(BuildContext context) {
    // return CustomeAppbarpg(title:"MY FAVROUTIES");
    return Scaffold(
      appBar: MycustomAppBar("MY FAVROUTIES"),
      body: ListView.builder(
        itemCount:imgListpost.length ,
        itemBuilder: (context,index){
          return  Container(
              margin: EdgeInsets.only(top: 8),
              child: UserPostes(context,imgListpost[index],favouriteicon,primaryColor));
        },
      ),
    );
  }
}