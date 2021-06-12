


import 'package:autoreact/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // //svg icons
    // final List<String> droweIcons = [
    //   "$imgpath/svgicon/Search.svg",
    //   "$imgpath/svgicon/findfriend.svg",
    //   "$imgpath/svgicon/care.svg",
    //   "$imgpath/svgicon/care.svg",
    //   "$imgpath/svgicon/myfavourite.svg",
    //   "$imgpath/svgicon/NewsBlogs.svg",
    //   "$imgpath/svgicon/Auction.svg",
    //   "$imgpath/svgicon/Invite.svg",
    //   "$imgpath/svgicon/EventsFillAdd.svg",
    //   "$imgpath/svgicon/AboutUs.svg",
    //   "$imgpath/svgicon/ContactUs.svg",
    //   "$imgpath/svgicon/Setting.svg",
    //   "$imgpath/svgicon/SignOut.svg",
    // ];
    //svg icons
    //Home
    final List<String> droweIcons = [
      "$imgpath/Search.svg",
      "$imgpath/findfriend.svg",
      "$imgpath/care.svg",
      "$imgpath/care.svg",
      "$imgpath/myfavourite.svg",
      "$imgpath/NewsBlogs.svg",
      "$imgpath/Auction.svg",
      "$imgpath/Invite.svg",
      "$imgpath/EventsFillAdd.svg",
      "$imgpath/AboutUs.svg",
      "$imgpath/ContactUs.svg",
      "$imgpath/Setting.svg",

    ];
    List<String> drowerIconName=['SEARCH','FIND FRIENDS','CAR DELARS','CAR LISTING','MY FAVOURITES','NEWS & BLOG','AUCTIONS','INVITE','CAR EVENTS','ABOUT US','CONTACT US','SETTINGS'];
    //Routes
    Map<int,dynamic> rout={0:'ForgetPassword'};
    return SafeArea(
      child: Drawer(
          child:SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: sizeWidth(context),
                  padding: EdgeInsets.all(20),
                  color: primaryColor,
                  child: Center(
                    child: Column(
                      children: [
                       Align(
                           alignment: Alignment.topRight, child: Text("X",style: TextStyle(fontSize: 20,color: Colors.white),)),
                        Container(
                          margin: EdgeInsets.only(top: 15,bottom: 10),
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("$imgpath/user1.jfif",),
                              fit: BoxFit.fill,
                            ),
                          ),
                          ),
                        Text("john Smith",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                        Container(
                          height: 30,
                            child: Text("New York,USA",style: TextStyle(color: Colors.white,fontSize: 14),)),

                      ],
                    ),
                  ),
                ),
                //SizedBox(height: 10,),
                Container(
                  height: 40,
                  width: sizeWidth(context),
                  color:Color(0xffc70606),
                  child:Row(
                    children: [
                      SizedBox(width: 10),
                      SvgPicture.asset( "$imgpath/homefillicon.svg",color: white_Color,height: 20,width: 20,),
                      SizedBox(width: 10),
                      Text("HOME",style: TextStyle(color: Colors.white),),

                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  //margin: EdgeInsets.only(bottom: 10),
                  //color: Colors.pink,
                  height: sizeheight(context)*0.6,
                  width: sizeWidth(context),

                  child: ListView.builder(
                    physics:NeverScrollableScrollPhysics(),
                    itemCount:droweIcons.length ,
                    itemBuilder: (context,index){
                      print(drowerIconName.length);
                      print("hello");
                      print(droweIcons.length);
                      return  Padding(
                        padding: const EdgeInsets.only(left:10.0,top:20.0),
                        child: InkWell(
                          //ForgetPassword
                          onTap:(){
                            Navigator.pop(context);
                            Navigator.pushNamed(context, rout[index]);
                          },
                          child: Container(
                            width: sizeWidth(context),
                            //height: 40,
                            child: Column(
                              children: [
                                Row(children: [
                                  SvgPicture.asset(droweIcons[index],color: primaryColor,height: 20,width: 20,),
                                  SizedBox(width: 10),
                                  Text(drowerIconName[index]),
                                ],)
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.only(left:10.0,top:8.0),
          child: Container(
            width: sizeWidth(context),
            //height: 40,
            child: Column(
              children: [
                Row(children: [
                  SvgPicture.asset( "$imgpath/SignOut.svg",color: primaryColor,height: 20,width: 20,),
                  SizedBox(width: 10),
                  Text('SIGN OUT'),
                ],)
              ],
            ),
          ),
        ),
              ],
            ),
          )
      ),
    );


     }
}
