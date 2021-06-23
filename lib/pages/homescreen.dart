import 'dart:ui';

import 'package:autoreact/pages/about_screen.dart';
import 'package:autoreact/pages/carlisting_screen.dart';
import 'package:autoreact/pages/findfriend_screen.dart';
import 'package:autoreact/pages/mainhomescreen.dart';
import 'package:autoreact/utils/api.dart';
import 'package:autoreact/utils/constants.dart';
import 'package:autoreact/utils/widgets/bottomnavbar.dart';
import 'package:autoreact/utils/widgets/carousel.dart';
import 'package:autoreact/utils/widgets/main_drawer.dart';
import 'package:autoreact/utils/widgets/postes.dart';
import 'package:autoreact/utils/widgets/tabbar_MaterialWidget.dart';
import 'package:autoreact/utils/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

import 'chat_screen.dart';

class HomePage extends StatefulWidget {
  bool Messagesceren =false;
  bool isSearch = false;
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
class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int _currentIndex=0;
  TabController _tabController;


//{
  //bottom APP bar
  _handleTabSelection() {
    setState(() {
      _currentIndex = _tabController.index;
      _currentIndex==1
          ?widget.Messagesceren =true
          : widget.Messagesceren =false;
    });
  }

  //bottom app bar
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = new TabController(length: 5, vsync: this);
    // currentindex=_tabController.index;
    _tabController.addListener(_handleTabSelection);
    // _currentIndex =
    // widget.initialChangeIndex == 0 ? 0 : widget.initialChangeIndex;
    print(_tabController.index);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  RangeValues _currentRangeValues = const RangeValues(20, 60);

  String favouriteicon = "$imgpath/savefillicon.svg";
  bool _checkboxForSale = false;
  bool _checkboxForBuy = false;
  bool _checkboxForRent = false;
  bool colorva = true;
  bool listingbtn = false;
  bool v_carprice = false;
  bool tab = false;
  var value;

  int index = 0;

  @override
  Widget build(BuildContext context) {
    //  final args = ModalRoute.of(context).settings.arguments as ScreenArguments;

    return Scaffold(
      // backgroundColor:Colors.grey[200],
      key: _drawerKey,
      //appBar: homeAppbar(),
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(55.0),
    child:customAppBar(),
    // widget.Messagesceren?SizedBox():customAppBar(),
      ),
      //
      resizeToAvoidBottomInset: false,
      //bottom nav bar
      //BottomNavigation(),
      /* bottomNavigationBar:BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currnetScreen=HomePage();
                        currentTab=0;
                      });
                    },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.dashboard,
                        color: currentTab==0? Colors.blue:Colors.grey,
                      ),
                      Text("Dashbord",style: TextStyle(color: currentTab==0? Colors.blue:Colors.grey,),),
                    ],
                  ),
                ),
                //
                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      currnetScreen=ChatPage();
                      currentTab=1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.dashboard,
                        color: currentTab==1? Colors.blue:Colors.grey,
                      ),
                      Text("Dashbord",style: TextStyle(color: currentTab==1? Colors.blue:Colors.grey,),),
                    ],
                  ),
                ),
              ],
            ),
              //Tab to Right icon
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currnetScreen=HomePage();
                        currentTab=2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.dashboard,
                          color: currentTab==2? Colors.blue:Colors.grey,
                        ),
                        Text("Dashbord",style: TextStyle(color: currentTab==2? Colors.blue:Colors.grey,),),
                      ],
                    ),
                  ),
                  //
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currnetScreen=ChatPage();
                        currentTab=3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.dashboard,
                          color: currentTab==3? Colors.blue:Colors.grey,
                        ),
                        Text("Dashbord",style: TextStyle(color: currentTab==3? Colors.blue:Colors.grey,),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),*/
      //ibrar bottom tab bar
      bottomNavigationBar: Bottomappbar(SvgIconsList,context),
      /*Material(
        //color: Colors.teal,
        child: new Container(
          height: 60.0,
          child: TabBar(
            // shape: CircularNotchedRectangle(),
            // notchMargin: 10,
            controller: _tabController,
            //unselectedLabelColor: Colors.black54,

            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 1.5, color: primaryColor),
            ),
            //labelColor: primaryColor,

            tabs: [
              Tab(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      SvgIconsList[2],
                      color: _currentIndex == 0 ? primaryColor : text_Color,
                      height: 25,
                      width: 25,
                    ),
                    // SizedBox(height: 3,),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 10,
                        color: _currentIndex == 0 ? primaryColor : text_Color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Center(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        SvgIconsList[5],
                        color: _currentIndex == 1 ? primaryColor : text_Color,
                        height: 25,
                        width: 25,
                      ),
                      Container(
                          // padding: EdgeInsets.all(3.0),
                          child: Text(
                        "Message",
                        style: TextStyle(
                          fontSize: 10,
                          color: _currentIndex == 1 ? primaryColor : text_Color,
                        ),
                      ))
                    ],
                  ),
                ),
              ),
              Tab(
                child: SizedBox(
                  width: 10,
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      SvgIconsList[4],
                      color: _currentIndex == 3 ? primaryColor : text_Color,
                      height: 25,
                      width: 25,
                    ),
                    Container(
                        child: Text(
                      "Rent Car",
                      style: TextStyle(
                        fontSize: 10,
                        color: _currentIndex == 3 ? primaryColor : text_Color,
                      ),
                    ))
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      SvgIconsList[3],
                      color: _currentIndex == 4 ? primaryColor : text_Color,
                      height: 25,
                      width: 25,
                    ),
                    Container(
                        child: Text(
                      "Account",
                      style: TextStyle(
                        fontSize: 10,
                        color: _currentIndex == 4 ? primaryColor : text_Color,
                      ),
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),*/
      //bottom tabbar end
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //
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
      body:   MainHomeScreen(),
      /*TabBarView(
        controller: _tabController,
        children: [
          MainHomeScreen(),
          ChatPage(isSearchPresses: widget.isSearch,),
       //  gotochatscreen(),
          //ChatPage(isSearchPresses: widget.isSearch,),
          //ChatPage(),
          aboutscreen(),
          FindFriendspg(),
          ChatPage(isSearchPresses: widget.isSearch,),
        ],
      ),*/
//           Column(
//         children: [
//           //searchbox
//           Padding(
//             padding: EdgeInsets.only(
//                 top: 10.0, bottom: 5.0, left: 10.0, right: 10.0),
//             child: Container(
//               //margin: EdgeInsets.all(8.0),
//               // padding: EdgeInsets.only(left:8.0),
//               height: 50,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 // border: Border.all(color: Colors.blueAccent),
//                 border: Border.all(color: Colors.grey),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       width: sizeWidth(context) * 0.8,
//                       padding: EdgeInsets.only(left: 8.0),
//                       height: 48,
//                       child: TextField(
//                         decoration: InputDecoration(
//                           hintText: "Search",
//                           hintStyle: TextStyle(color: Colors.grey),
//                           enabledBorder: InputBorder.none,
//                           focusedErrorBorder: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                     //search icons
//                     Padding(
//                       padding: const EdgeInsets.only(left: 8.0),
//                       child: Container(
//                           height: sizeheight(context),
//                           width: 50,
//                           color: primaryColor,
//                           child: Center(
//                             child: Icon(
//                               Icons.search,
//                               color: Colors.white,
//                             ),
//                           )),
//                     ),
//
//                     //Gridview
//                   ]),
//             ),
//           ),
//           //item list
//           Container(
//             height: sizeheight(context) * 0.04,
//             child: ListView.builder(
//               shrinkWrap: true,
//               itemCount: categeriesNames.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(left: 4.0, right: 4.0),
//                   child: InkWell(
//                     onTap: () {
//                       setState(() {
//                         colorva = false;
//                         value = index;
//                         if(index==0) {
//                           print(index);
//                           listingbtn = true;
//                           v_carprice=false;
//                         }
//                        else if(index==1){
//                           print(index);
//                           v_carprice=true;
//                           listingbtn = false;
//                         }
//                       });
//                     },
//                     child: Container(
//                       padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: primaryColor),
//                         color: categeriesNames[index]['categeriesNames'] == "ALL" &&
//                                     colorva
//                                 ? primaryColor
//                                 : index == value
//                                     ? primaryColor
//                                     : Colors.white,
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Text(
//                         categeriesNames[index]['categeriesNames'],
//                         style: TextStyle(
//                             color: categeriesNames[index]['categeriesNames'] ==
//                                         "ALL" &&
//                                     colorva
//                                 ? Colors.white
//                                 : index == value
//                                     ? Colors.white
//                                     : primaryColor,
//                             fontWeight: FontWeight.bold),
//                       ),
//
//                       //child:isntituteNames[index]['InstituteName']=="ALL"&&colorva?Text(isntituteNames[index]['InstituteName'],style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),):index==value?Text(isntituteNames[index]['InstituteName'],style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),):Text(isntituteNames[index]['InstituteName'],style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),)
//                     ),
//                   ),
//                 );
//               },
//               scrollDirection: Axis.horizontal,
//             ),
//           ),
//           SizedBox(height: 10),
//           //users
// Expanded(
//   child:
//           SingleChildScrollView(
//             child: listingbtn?
//             CarListing():v_carprice?
//             carprice():Homebody(),
//             //    :tab?pages[index]:Homebody(),
//           ),
// ),
//         ],
//       ),
    );
  }

/*........................................Custom AppBar.....................*/
  AppBar customAppBar() {
    return AppBar(
      brightness: Brightness.light,
      // backgroundColor:Colors.grey[400],
      backgroundColor: primaryColor,
      //centerTitle: true,
      //SecondryColor,
      //LogoIcon
      //leading: Icon(Icons.menu,color: white_Color),
      title: //searchbox
          Padding(
        padding: EdgeInsets.only(top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
        child: Container(
          // margin: EdgeInsets.only(right:200.0),
          // padding: EdgeInsets.only(left:8.0),
          height: 40,
          width: sizeWidth(context)*1.05,
          decoration: BoxDecoration(
            color: Colors.white,
            // border: Border.all(color: Colors.blueAccent),
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            //search icon
            Container(
                height: sizeheight(context),
                width: 50,
                decoration: BoxDecoration(
                  color: primaryColor,
                  // border: Border.all(color: Colors.blueAccent),
                  // border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                )),
            Container(
              width: sizeWidth(context) * 0.36,
              // margin: EdgeInsets.only(left:0,right: 50),
              padding: EdgeInsets.only(
                left: 8.0,
                top: 8,
              ),
              // height: 40,
              child: TextField(
                //showCursor: false,
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                ),
              ),
            ),
            //search icons

            //Gridview
          ]),
        ),
      ),
      // Image.asset(
      //   '$imgpath/LogoIcon.png',
      //   alignment: Alignment.center,
      // ),
      //Icon(Icons.home,color: white_Color),
      // title: Text(title,style: TextStyle(color: Colors.black),),
      leading: GestureDetector(
        onTap: () => _drawerKey.currentState.openDrawer(),
        child: Container(
            //color: Colors.black,
            // height: 20,
            // width: 20,
            padding: EdgeInsets.all(4.0),
            margin: EdgeInsets.only(top:6.0,bottom: 6.0),
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
        SizedBox(
          width: 10,
        ),
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
        ),
        // Icon(Icons.search,size: 25,color: white_Color),
      ],
    );
  }
/*--------------------------------FAB---------------------------------------------------*/

}
