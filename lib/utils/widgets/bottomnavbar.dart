

import 'package:autoreact/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget Bottomappbar(List<String> btmiconpath,BuildContext context){
  return  BottomAppBar(
    color: Colors.white,
    shape: CircularNotchedRectangle(),
    child: Container(
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10,5,5,5),
            child: Container(
              child: Column(
                children: [
                    SvgPicture.asset(btmiconpath[2],color: primaryColor,height: 25,width: 25,),
                  Container(
                      child: Text("Home",style: TextStyle(color:primaryColor),))
                ],
              ),
            ),
          ),
          // IconButton(
          //   icon: Icon(Icons.message_outlined),
          //   color: primaryColor,
          //   onPressed: (){},
          // ),
          InkWell(
            onTap: ()=>Navigator.pushNamed(context, 'messageScreen'),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10,5,5,5),
              child: Container(
                child: Column(
                  children: [
                    SvgPicture.asset(btmiconpath[5],color: text_Color,height: 25,width: 25,),
                    Container(
                        child: Text("Message",style: TextStyle(color:text_Color),))
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 15,),
          // IconButton(
          //   icon: Icon(Icons.add_box_outlined),
          //   color: primaryColor,
          //   onPressed: (){},
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10,5,5,5),
            child: Container(
              child: Column(
                children: [
                  SvgPicture.asset(btmiconpath[4],color: text_Color,height: 25,width: 25,),
                  Container(
                      child: Text("Rent Car",style: TextStyle(color:text_Color),))
                ],
              ),
            ),
          ),
          //icon
          Padding(
            padding: const EdgeInsets.fromLTRB(0,5,5,5),
            child: Container(
              child: Column(
                children: [
                  SvgPicture.asset(btmiconpath[3],color: text_Color,height: 25,width: 25,),
                  Container(
                      child: Text("Account",style: TextStyle(color:text_Color),))
                ],
              ),
            ),
          ),
          // IconButton(
          //   icon: Icon(Icons.account_circle_outlined),
          //   color: primaryColor,
          //   onPressed: (){},
          // ),
          // Divider(),
        ],
      ),
    ),
  );

}