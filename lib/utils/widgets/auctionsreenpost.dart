
import 'package:autoreact/pages/homescreen.dart';
import 'package:autoreact/utils/constants.dart';
import 'package:autoreact/utils/widgets/customlisttile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget AuctionPost(context,imgListpost,){
  return Padding(
    padding: const EdgeInsets.only(top:5.0,bottom: 5.0,left: 10.0,right: 10.0),
    child: Container(
      // color: Colors.red,
      child: Column(
        children: [
          Container(
            //color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 25,
                  //url
                  backgroundImage: AssetImage("$imgpath/user1.jfif"),
                ),
                //SizedBox(width: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(child: Text("Jhon Doe",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                    ),
                    Row(children: [
                      SvgPicture.asset("$imgpath/Lcotion.svg",color: text_Color,height: 20,width: 20,),
                      SizedBox(width: 5.0,),
                      Text("Alexander,USA"),
                      Text("  |  "),
                      Text("2m ago "),
                    ],),
                  ],
                ),
                //save icons
                SizedBox(width: 50,),
                SvgPicture.asset("$imgpath/save.svg",color:text_Color,height: 20,width: 20,),
                //SizedBox(width: 30,),
                SvgPicture.asset("$imgpath/save.svg",color:text_Color,height: 20,width: 20,),
              ],
            ),
          ),
          //schools image container
          Padding(
            padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
            child: Container(
              height: sizeheight(context)*0.28,
              width: sizeWidth(context),
              // width: sizeWidth(context)*0.85,
              decoration: new BoxDecoration(
                //color: Colors.red,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(
                    //'assets/schoolimage.jpg'
                      imgListpost
                     // imgListpos
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          // SizedBox(height: 10.0),
          //imagetile
          Container(
            //color:Colors.yellow,
            //margin: EdgeInsets.only(left:sizeWidth(context)*0.06,right: 0.06),
            child:Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("New Launch",style: TextStyle(color: primaryColor),)),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("2020 Tata Nexon:First Drive Review",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                Row(
                  children: [
                    Text("By john Smith"),
                    Text("  |  "),
                    Text("Mar 07 2020"),
                  ],
                ),
                SizedBox(height: 15.0),
                Container(

                  // margin: EdgeInsets.only(right: 8.0),
                  height: 2.0,
                  width: sizeWidth(context),
                  color: Colors.grey[300],
                ),
                SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        child: Row(
                          children: [
                            SvgPicture.asset("$imgpath/heart.svg",color: primaryColor,height: 20,width: 20,),
                            Text(" 20 Likes ",style: TextStyle(color: primaryColor),),
                          ],
                        )),
                    Container(
                        child: Row(
                          children: [
                            //comments
                            SvgPicture.asset("$imgpath/comments.svg",color: text_Color,height: 20,width: 20,),
                            // Icon(Icons.mode_comment_outlined,color: Colors.grey),
                            Text("10 Comments",style: TextStyle(color: Colors.grey),),
                          ],
                        )),

                    SizedBox(width: 20.0),
                    Container(
                        child: Row(
                          children: [
                            SvgPicture.asset("$imgpath/shere.svg",color: text_Color,height: 20,width: 20,),
                            Text("7 Share",style: TextStyle(color: Colors.grey),),
                          ],
                        )),
                  ],
                ),
                SizedBox(height: 5.0),
                Container(
                  //margin: EdgeInsets.only(right: 8.0),
                  height: 2.0,

                  width: sizeWidth(context),
                  color: Colors.grey[300],
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),

        ],
      ),
    ),
  );
}