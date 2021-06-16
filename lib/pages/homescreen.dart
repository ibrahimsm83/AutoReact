import 'dart:ui';

import 'package:autoreact/pages/carlisting_screen.dart';
import 'package:autoreact/utils/api.dart';
import 'package:autoreact/utils/constants.dart';
import 'package:autoreact/utils/widgets/bottomnavbar.dart';
import 'package:autoreact/utils/widgets/carousel.dart';
import 'package:autoreact/utils/widgets/main_drawer.dart';
import 'package:autoreact/utils/widgets/postes.dart';
import 'package:autoreact/utils/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  // final  bool carlisting;
  // const HomePage({Key key, @required this.carlisting}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

//carousel images
final List<String> imgList = [
  "$imgpath/carads0.jpg",
  "$imgpath/carads1.jpg",
  "$imgpath/carads2.jpg",
  "$imgpath/carads3.jpg",
];
final List<String> imgListpost = [
  "$imgpath/car1.jfif",
  "$imgpath/car2.jpg",
  "$imgpath/car3.jfif",
  "$imgpath/car4.jpg",
];
//svg icons
final List<String> SvgIconsList = [
  "$imgpath/Lcotion.svg",
  "$imgpath/Notification.svg",
  "$imgpath/Home.svg",
  "$imgpath/account.svg",
  "$imgpath/care.svg",
  "$imgpath/message.svg",
  "$imgpath/save.svg",
  // "$imgpath/car3.jfif",
  // "$imgpath/car4.jpg",
];

//postes images
class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  String favouriteicon = "$imgpath/savefillicon.svg";
  bool _checkboxForSale = false;
  bool _checkboxForBuy = false;
  bool _checkboxForRent=false;
  bool colorva = true;
  bool listingbtn = false;
  var value;

  @override
  Widget build(BuildContext context) {
  //  final args = ModalRoute.of(context).settings.arguments as ScreenArguments;


    return Scaffold(
      // backgroundColor:Colors.grey[200],


      key: _drawerKey,
      //appBar: homeAppbar(),
      appBar: customAppBar(),

      //
      resizeToAvoidBottomInset: false,
      //bottom nav bar
      //BottomNavigation(),
      bottomNavigationBar: Bottomappbar(SvgIconsList, context),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {},
        child: SvgPicture.asset(
          "$imgpath/pen.svg",
          color: Colors.white,
          height: 30,
          width: 30,
        ),
      ),
      drawer: MainDrawer(),
      //bottom nav bnar
      body:
          // listingbtn?
          // Column(
          //   children: [
          //     Container(
          //       decoration: BoxDecoration(
          //         //color: Colors.white,
          //         // border: Border.all(color: Colors.blueAccent),
          //         border: Border.all(color: Colors.grey),
          //         borderRadius: BorderRadius.circular(0),
          //       ),
          //       child: Row(
          //         children: [
          //           Checkbox(
          //             focusColor: primaryColor,
          //             activeColor: primaryColor,
          //             value: _checkboxForSale,
          //             onChanged: (value) {
          //               setState(() {
          //                 _checkboxForSale? _checkboxForSale = false: _checkboxForSale = true;
          //               });
          //             },
          //           ),
          //           Text("For Sale"),
          //         ],
          //       ),
          //     ),
          //     //For buy
          //     Container(
          //       child: Row(
          //         children: [
          //           Checkbox(
          //             focusColor: primaryColor,
          //             activeColor: primaryColor,
          //             value: _checkboxForBuy,
          //             onChanged: (value) {
          //               setState(() {
          //                 _checkboxForBuy? _checkboxForBuy = false: _checkboxForBuy = true;
          //               });
          //             },
          //           ),
          //           Text("For Buy"),
          //         ],
          //       ),
          //     ),
          //     SizedBox(height: 3.0,),
          //     //For Rent
          //     Container(
          //       decoration: BoxDecoration(
          //         //color: Colors.white,
          //         // border: Border.all(color: Colors.blueAccent),
          //         border: Border.all(color: Colors.grey),
          //         borderRadius: BorderRadius.circular(0),
          //       ),
          //       child: Row(
          //         children: [
          //           Checkbox(
          //             focusColor: primaryColor,
          //             activeColor: primaryColor,
          //             value: _checkboxForRent,
          //             onChanged: (value) {
          //               setState(() {
          //                 _checkboxForRent? _checkboxForRent = false: _checkboxForRent = true;
          //               });
          //             },
          //           ),
          //           Text("For Rent"),
          //         ],
          //       ),
          //     ),
          //     //done btn
          //     Container(
          //       child: Column(
          //         children: [
          //           Container(
          //             height: 70,
          //             color: primaryColor,
          //             child:Padding(
          //               padding: const EdgeInsets.only(top:0.0,bottom: 0.0,left: 15.0,right: 15.0),
          //               child: Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                 children: [
          //                   Text("RESET",style: TextStyle(color: white_Color),),
          //                   ElevatedButton(
          //                     child: Text('DONE',style: TextStyle(color: primaryColor),),
          //                     style: ElevatedButton.styleFrom(
          //                       primary: white_Color,
          //                     ),
          //                     onPressed: () {
          //                       print('Pressed');
          //                     },
          //                   )
          //                 ],
          //               ),
          //             ),
          //           ),
          //           //listview builder
          //
          //           Container(
          //             height: sizeheight(context)*0.57,
          //             padding: EdgeInsets.only(bottom: 10),
          //             child:Expanded(child:
          //             ListView.builder(
          //               itemCount:imgListpost.length ,
          //               itemBuilder: (context,index){
          //                 return  Container(
          //                   //margin: EdgeInsets.only(top: 8),
          //                     child: UserPostes(context,imgListpost[index],favouriteicon,primaryColor));
          //               },
          //             ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     )
          //
          //   ],
          // ):
          // SingleChildScrollView(
          //   child:
          Column(
        children: [
          //searchbox
          Padding(
            padding: EdgeInsets.only(
                top: 10.0, bottom: 5.0, left: 10.0, right: 10.0),
            child: Container(
              //margin: EdgeInsets.all(8.0),
              // padding: EdgeInsets.only(left:8.0),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                // border: Border.all(color: Colors.blueAccent),
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: sizeWidth(context) * 0.8,
                      padding: EdgeInsets.only(left: 8.0),
                      height: 48,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          //  focusedBorder:OutlineInputBorder(
                          //    borderSide: const BorderSide(color: Colors.red, width: 2.0),
                          // suffixIcon: Icon(Icons.search,color: primaryColor,),
                        ),
                      ),
                    ),
                    //search icons
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                          height: sizeheight(context),
                          width: 50,
                          color: primaryColor,
                          child: Center(
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          )),
                    ),

                    //Gridview
                  ]),
            ),
          ),
          //item list
          Container(
            height: sizeheight(context) * 0.04,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: isntituteNames.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        colorva = false;
                        value = index;
                        if(index==0) {
                          print(index);
                          listingbtn = true;
                        }
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
                      decoration: BoxDecoration(
                        border: Border.all(color: primaryColor),
                        color: isntituteNames[index]['InstituteName'] == "ALL" &&
                                    colorva
                                ? primaryColor
                                : index == value
                                    ? primaryColor
                                    : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        isntituteNames[index]['InstituteName'],
                        style: TextStyle(
                            color: isntituteNames[index]['InstituteName'] ==
                                        "ALL" &&
                                    colorva
                                ? Colors.white
                                : index == value
                                    ? Colors.white
                                    : primaryColor,
                            fontWeight: FontWeight.bold),
                      ),

                      //child:isntituteNames[index]['InstituteName']=="ALL"&&colorva?Text(isntituteNames[index]['InstituteName'],style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),):index==value?Text(isntituteNames[index]['InstituteName'],style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),):Text(isntituteNames[index]['InstituteName'],style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),)
                    ),
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(height: 10),
          //users
Expanded(
  child:
          SingleChildScrollView(
            child:listingbtn? Column(
      children: [
        Container(
          decoration: BoxDecoration(
            //color: Colors.white,
            // border: Border.all(color: Colors.blueAccent),
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(0),
          ),
          child: Row(
            children: [
              Checkbox(
                focusColor: primaryColor,
                activeColor: primaryColor,
                value: _checkboxForSale,
                onChanged: (value) {
                  setState(() {
                    _checkboxForSale? _checkboxForSale = false: _checkboxForSale = true;
                  });
                },
              ),
              Text("For Sale"),
            ],
          ),
        ),
        //For buy
        Container(
          child: Row(
            children: [
              Checkbox(
                focusColor: primaryColor,
                activeColor: primaryColor,
                value: _checkboxForBuy,
                onChanged: (value) {
                  setState(() {
                    _checkboxForBuy? _checkboxForBuy = false: _checkboxForBuy = true;
                  });
                },
              ),
              Text("For Buy"),
            ],
          ),
        ),
        SizedBox(height: 3.0,),
        //For Rent
        Container(
          decoration: BoxDecoration(
            //color: Colors.white,
            // border: Border.all(color: Colors.blueAccent),
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(0),
          ),
          child: Row(
            children: [
              Checkbox(
                focusColor: primaryColor,
                activeColor: primaryColor,
                value: _checkboxForRent,
                onChanged: (value) {
                  setState(() {
                    _checkboxForRent? _checkboxForRent = false: _checkboxForRent = true;
                  });
                },
              ),
              Text("For Rent"),
            ],
          ),
        ),
        //done btn
        Container(
          child: Column(
            children: [
              Container(
                height: 70,
                color: primaryColor,
                child:Padding(
                  padding: const EdgeInsets.only(top:0.0,bottom: 0.0,left: 15.0,right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("RESET",style: TextStyle(color: white_Color),),
                      ElevatedButton(
                        child: Text('DONE',style: TextStyle(color: primaryColor),),
                        style: ElevatedButton.styleFrom(
                          primary: white_Color,
                        ),
                        onPressed: () {
                          print('Pressed');
                        },
                      )
                    ],
                  ),
                ),
              ),
              //listview builder

              Container(
                height: sizeheight(context)*0.57,
                padding: EdgeInsets.only(bottom: 10),
                 child:
    // Expanded(child:
                ListView.builder(
                  itemCount:imgListpost.length ,
                  itemBuilder: (context,index){
                    return  Container(
                      //margin: EdgeInsets.only(top: 8),
                        child: UserPostes(context,imgListpost[index],favouriteicon,primaryColor));
                  },
                ),
                //),
              ),
            ],
          ),
        )

      ],
    ):
            Column(
              children: [
                Container(
                  // color: Colors.red,
                  height: sizeheight(context) * 0.12,
                  //margin: EdgeInsets.only(bottom:10.),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: usersDetails.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 3.0, left: 3.0),
                            child: Container(
                              child: CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 33,
                                  //backgroundImage:AssetImage(usersDetails[index]['image']),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(200),
                                      child: Image.asset(
                                        usersDetails[index]['image'],
                                        width: 150,
                                        height: 150,
                                      )),
                                  // AssetImage(usersDetails[index]['image']),
                                ),
                              ),
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                border: new Border.all(
                                  color: primaryColor,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          Text(usersDetails[index]['usersName']),
                          //Text("users")
                        ],
                      );
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                //schools image
                UserPostes(
                    context, imgListpost[0], SvgIconsList[6], text_Color),
                //craouser
                appCarousal(context),
                // CarouselWithDotsPage(imgList: imgList),
                //schools image
                UserPostes(
                    context, imgListpost[1], SvgIconsList[6], text_Color),
                // //GridView
                Container(
                    margin: EdgeInsets.only(left: 8, right: 8, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                "Areas",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                "View All",
                                style: TextStyle(
                                    fontSize: 18, color: primaryColor),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //Schools
                            Container(
                              width: sizeWidth(context) * 0.43,
                              height: sizeheight(context) * 0.16,
                              decoration: new BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                image: new DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black38, BlendMode.darken),
                                  image:
                                      ExactAssetImage('$imgpath/Nashville.jpg'),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "Nashville",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                //
                //             //Collages
                            Container(
                              width: sizeWidth(context) * 0.43,
                              height: sizeheight(context) * 0.16,
                              decoration: new BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                image: new DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black38, BlendMode.darken),
                                  image:
                                      ExactAssetImage('$imgpath/chicago.jpg'),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text("Chicago",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //Schools
                            Container(
                              width: sizeWidth(context) * 0.43,
                              height: sizeheight(context) * 0.16,
                              decoration: new BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                image: new DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black38, BlendMode.darken),
                                  image: ExactAssetImage(
                                      '$imgpath/upcomingcars.jpg'),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text("Upcoming Cars",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold))),
                              ),
                            ),
                            //Collages
                            Container(
                              width: sizeWidth(context) * 0.43,
                              height: sizeheight(context) * 0.16,
                              decoration: new BoxDecoration(
                                //color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                image: new DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black38, BlendMode.darken),
                                  image:
                                      ExactAssetImage('$imgpath/newyork.jpg'),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text("New York City",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold))),
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
                // //Schools images posts
                UserPostes(
                    context, imgListpost[2], SvgIconsList[6], text_Color),
                UserPostes(
                    context, imgListpost[3], SvgIconsList[6], text_Color),
                // //Listview builder
    //dsfjskldjfkls
                Container(
                  margin: EdgeInsets.only(left: 5, right: 8, bottom: 10),
                  //color: Colors.red,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              "Expert Review",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              "View All",
                              style:
                                  TextStyle(fontSize: 18, color: primaryColor),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        // height: sizeheight(context),

                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: teacherReviews.length,
                            itemBuilder: (BuildContext, index) {
                              return Container(
                                margin: EdgeInsets.only(
                                    left: 8, right: 8, bottom: 8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: sizeheight(context) * 0.14,
                                      width: sizeWidth(context) * 0.3,
                                      decoration: new BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        image: new DecorationImage(
                                          image: ExactAssetImage(
                                              teacherReviews[index]['image']),
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        //mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            teacherReviews[index]['Acadmyname'],
                                            style:
                                                TextStyle(color: primaryColor),
                                          ),
                                          SizedBox(height: 8),
                                          Container(
                                              width: sizeWidth(context) * 0.52,
                                              //color: Colors.red,
                                              child: Text(
                                                teacherReviews[index]['Review'],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              )),
                                          SizedBox(height: 8),
                                          Row(
                                            children: [
                                              Text(
                                                  teacherReviews[index]
                                                      ['Reviewersname'],
                                                  style: TextStyle(
                                                      color: text_Color)),
                                              Text("  |  "),
                                              Text(
                                                  teacherReviews[index]['Date'],
                                                  style: TextStyle(
                                                      color: text_Color)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                      //SizedBox(height: 20),
                      UserPostes(
                          context, imgListpost[3], SvgIconsList[6], text_Color),
                    ],
                  ),
                ),
              ],
            ),
          ),
),
        ],
      ),
      //  ),
    );
  }

/*........................................Custom AppBar.....................*/
  AppBar customAppBar() {
    return AppBar(
      brightness: Brightness.light,
      // backgroundColor:Colors.grey[400],
      backgroundColor: primaryColor,
      centerTitle: true,
      //SecondryColor,
      //LogoIcon
      //leading: Icon(Icons.menu,color: white_Color),
      title: Image.asset(
        '$imgpath/LogoIcon.png',
        alignment: Alignment.center,
      ),
      //Icon(Icons.home,color: white_Color),
      // title: Text(title,style: TextStyle(color: Colors.black),),
      leading: GestureDetector(
        onTap: () => _drawerKey.currentState.openDrawer(),
        child: Container(
            //color: Colors.black,
            // height: 20,
            // width: 20,
            padding: EdgeInsets.all(4.0),
            margin: EdgeInsets.all(8.0),
            // decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10.0), color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: SvgPicture.asset(
                //drawericon
                "$imgpath/drawericon.svg",
                color: white_Color,
                //height: 20,
                //width: 20,
              ),
            )),
      ),
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
          //Icon(Icons.notifications_active_outlined,size: 30,color: Colors.grey,),
        ),
      ],
    );
  }
}
