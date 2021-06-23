


import 'package:autoreact/config/route.dart';
import 'package:autoreact/pages/homescreen.dart';
import 'package:autoreact/utils/api.dart';
import 'package:autoreact/utils/constants.dart';
import 'package:autoreact/utils/widgets/bottomnavbar.dart';
import 'package:autoreact/utils/widgets/carousel.dart';
import 'package:autoreact/utils/widgets/main_drawer.dart';
import 'package:autoreact/utils/widgets/postes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarListingpg extends StatefulWidget {
  @override
  _CarListingpgState createState() => _CarListingpgState();
}

class _CarListingpgState extends State<CarListingpg> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  bool colorva = true;
  bool listingbtn = true;
  var value;
  String favouriteicon="$imgpath/savefillicon.svg";
  bool _checkboxForSale = false;
  bool _checkboxForBuy = false;
  bool _checkboxForRent = false;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          key: _drawerKey,
        appBar: customAppBar(),
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
      body: Column(
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
          // Container(
          //   height: sizeheight(context) * 0.04,
          //   child: ListView.builder(
          //     shrinkWrap: true,
          //     itemCount: categeriesNames.length,
          //     itemBuilder: (context, index) {
          //       return Padding(
          //         padding: const EdgeInsets.only(left: 4.0, right: 4.0),
          //         child: InkWell(
          //           onTap: () {
          //             setState(() {
          //               colorva = false;
          //               value = index;
          //               if(index==0) {
          //                 print(index);
          //                 listingbtn = true;
          //               }
          //             });
          //           },
          //           child: Container(
          //             padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
          //             decoration: BoxDecoration(
          //               border: Border.all(color: primaryColor),
          //               color: categeriesNames[index]['InstituteName'] == "LISTING" &&
          //                   colorva
          //                   ? primaryColor
          //                   : index == value
          //                   ? primaryColor
          //                   : Colors.white,
          //               borderRadius: BorderRadius.circular(8),
          //             ),
          //             child: Text(
          //               categeriesNames[index]['InstituteName'],
          //               style: TextStyle(
          //                   color: categeriesNames[index]['InstituteName'] ==
          //                       "LISTING" &&
          //                       colorva
          //                       ? Colors.white
          //                       : index == value
          //                       ? Colors.white
          //                       : primaryColor,
          //                   fontWeight: FontWeight.bold),
          //             ),
          //
          //             //child:isntituteNames[index]['InstituteName']=="ALL"&&colorva?Text(isntituteNames[index]['InstituteName'],style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),):index==value?Text(isntituteNames[index]['InstituteName'],style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),):Text(isntituteNames[index]['InstituteName'],style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),)
          //           ),
          //         ),
          //       );
          //     },
          //     scrollDirection: Axis.horizontal,
          //   ),
          // ),
          SizedBox(height: 10),
          //users
          Expanded(
            child:
            SingleChildScrollView(
              child:Column(
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
              )

            ),
          ),
        ],
      ),
      /*Column(
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
                  height: sizeheight(context)*0.68,
                  padding: EdgeInsets.only(bottom: 10),
                  child:Expanded(child:
                ListView.builder(
                  itemCount:imgListpost.length ,
                  itemBuilder: (context,index){
                    return  Container(
                        //margin: EdgeInsets.only(top: 8),
                        child: UserPostes(context,imgListpost[index],favouriteicon,primaryColor));
                  },
                ),
                  ),
                ),
              ],
            ),
          )

        ],
      )*/
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
