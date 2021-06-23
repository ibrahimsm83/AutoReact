import 'package:autoreact/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'audio_call_screen.dart';
// import 'package:vischat/utils/constant.dart';
// import 'package:vischat/views/screens/new_group_screen.dart';
// import 'package:vischat/views/screens/setting.dart';

class ChatInnerScreen extends StatefulWidget {
  bool search = false;
  dynamic  imageIndex;
  dynamic title;
  dynamic subtitle;
  bool isAttachment = false;

  ChatInnerScreen({@required this.imageIndex, @required this.title, @required this.subtitle});

  @override
  _ChatInnerScreenState createState() => _ChatInnerScreenState();
}

class _ChatInnerScreenState extends State<ChatInnerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
          child:  widget.search
              ? searchBar()
              : AppBar(
              brightness: Brightness.light,
              backgroundColor: primaryColor,
              leadingWidth: 30.0,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.white),
              title: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                       widget.title,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        widget.subtitle,
                        style: TextStyle(color: Colors.white, fontSize: 10.0),
                      ),
                    ],
                  ),
                ],
              ),
              actions: [
              SizedBox(
              height: 10.0,
              width: 40.0,
              ),
                IconButton(
                  icon: Icon(Icons.call),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AudioCallScreen()));
                    // Navigator.pushNamed(context,'AudioCallScreen');

                    //showSearch(context: context, delegate: DataSearch());
                    // setState(() {
                    //   widget.search = true;
                    // });
                  },
                ),
                PopupMenuButton<int>(
                  icon:Icon(Icons.video_call),
                  // icon: SvgPicture.asset(
                  //   '$imgpath/svgicon/Video Call.svg',
                  //   color: Colors.white,
                  //   fit: BoxFit.cover,
                  //  ),
                  onSelected: (value) {
                    if (value == 0){

                       // Get.to(NewGroupScreen());

                    }
                    if (value == 1){
                     // Get.to(SettingScreen());
                    }
                    print(value);
                  },
                  itemBuilder: (BuildContext contesxt) {
                    return [
                      PopupMenuItem(
                        child: Text("New group"),
                        value: 0,
                      ),
                      PopupMenuItem(
                        child: Text("Settings"),
                        value: 1,
                      ),
                    ];
                  },
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.more_vert),

              ]),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 7.0),
                                  width: 150.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: interchatbg_color,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Text(
                                    "Lorem ipsum",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "20:33",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2.0,
                                    ),
                                    Icon(
                                      Icons.done_all,
                                      color: primaryColor,
                                      size: 17.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 7.0),
                                  width: 60.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Text(
                                    "Yes",
                                    textAlign: TextAlign.center,

                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "20:36",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7.0, vertical: 7.0),
                                  width: 230.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: interchatbg_color,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Text(
                                    "Lorem ipsum dolor sit omet, conssctetur adipiscing",
                                    textAlign: TextAlign.start,

                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "20:37",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2.0,
                                    ),
                                    Icon(
                                      Icons.done_all,
                                      color: primaryColor,
                                      size: 17.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7.0, vertical: 7.0),
                                  width: 230.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Text(
                                    "Lorem ipsum dolor sit omet sed.",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      //color: Colors.pinkAccent,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "20:38",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7.0, vertical: 7.0),
                                  width: 150.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Text(
                                    "Lorem ipsum dolor",
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "20:38",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7.0, vertical: 7.0),
                                  width: 100.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: interchatbg_color,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Text(
                                    "Yes, Done.",
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "20:38",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2.0,
                                    ),
                                    Icon(
                                      Icons.done_all,
                                      color: primaryColor,
                                      size: 17.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 7.0),
                                  width: 150.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: interchatbg_color,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Text(
                                    "Lorem ipsum",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "20:33",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2.0,
                                    ),
                                    Icon(
                                      Icons.done_all,
                                      color: primaryColor,
                                      size: 17.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 7.0),
                                  width: 60.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Text(
                                    "Yes",
                                    textAlign: TextAlign.center,

                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "20:36",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7.0, vertical: 7.0),
                                  width: 230.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: interchatbg_color,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Text(
                                    "Lorem ipsum dolor sit omet, conssctetur adipiscing",
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "20:37",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2.0,
                                    ),
                                    Icon(
                                      Icons.done_all,
                                      color: primaryColor,
                                      size: 17.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7.0, vertical: 7.0),
                                  width: 230.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Text(
                                    "Lorem ipsum dolor sit omet sed.",
                                    textAlign: TextAlign.start,

                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "20:38",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7.0, vertical: 7.0),
                                  width: 150.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Text(
                                    "Lorem ipsum dolor",
                                    textAlign: TextAlign.start,

                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "20:38",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7.0, vertical: 7.0),
                                  width: 100.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: interchatbg_color,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Text(
                                    "Yes, Done.",
                                    textAlign: TextAlign.start,

                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "20:38",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2.0,
                                    ),
                                    Icon(
                                      Icons.done_all,
                                      color: primaryColor,
                                      size: 17.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //sm msg
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7.0, vertical: 7.0),
                                  width: 230.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: interchatbg_color,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Text(
                                    "Lorem ipsum dolor sit omet, conssctetur adipiscing",
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "20:37",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2.0,
                                    ),
                                    Icon(
                                      Icons.done_all,
                                      color: primaryColor,
                                      size: 17.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7.0, vertical: 7.0),
                                  width: 150.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Text(
                                    "Lorem ipsum dolor",
                                    textAlign: TextAlign.start,

                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "20:38",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      widget.isAttachment == true
                          ? Container(
                        child: bottomSheet(),
                      )
                          : SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: sizeWidth(context),
              margin: EdgeInsets.only(left:sizeWidth(context)*0.02,right:sizeWidth(context)*0.02 ),
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(color: text_Color),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  children: <Widget>[
                    // SizedBox(
                    //   width: 8.0,
                    // ),

                    // SizedBox(
                    //   width: 8.0,
                    // ),

                    // SizedBox(
                    //   width: 8.0,
                    // ),
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                    //color: Colors.tealAccent,
                   // borderRadius:  BorderRadius.circular(32),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17),
                      hintText: 'Type Message...',
                      //suffixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
                  ),
                ),
                    // Text(
                    //   "Type Message...",
                    //   style: TextStyle(color: Colors.grey),
                    // ),
                    SizedBox(
                      width: 15.0,
                    ),
                    //Spacer(),
                    SvgPicture.asset(
                      '$imgpath/svgicon/Camera.svg',
                      color: Colors.grey.shade600,
                      fit: BoxFit.fill,
                    ),
                    //
                    IconButton(
                        icon: Icon(
                          Icons.attachment,
                          color: text_Color,
                        ),
                        onPressed: () {
                          setState(() {
                            if (widget.isAttachment == false) {
                              widget.isAttachment = true;
                            } else {
                              widget.isAttachment = false;
                            }
                          });
                        }),
                    Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: primaryColor),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: SvgPicture.asset(
                          '$imgpath/svgicon/Send.svg',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }

  Padding searchBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: double.infinity,
            height: 300.0,
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: text_Color,
                    width: 1.0,
                  ),
                ),
                hintText: "Search",
                contentPadding: EdgeInsets.only(left: 50.0),
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  widget.search = false;
                });
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
  Widget bottomSheet() {
    return Builder(builder: (BuildContext context) {
      return Container(
        height: 350.0,

        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                spreadRadius: 3,
                color: Colors.black12,
                offset: Offset(0, -3),
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconCreation(Icons.home_outlined, primaryColor, "Property"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(Icons.business, Colors.pink, "Project"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(
                      Icons.business_center_outlined, Colors.blueGrey, "Job"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconCreation(Icons.supervised_user_circle_outlined,
                      primaryColor, "Broker"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(Icons.business, Colors.pink, "Estate"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(Icons.person, Colors.blueGrey, "Developer"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconCreation(
                      Icons.location_on_outlined, primaryColor, "Location"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(
                      Icons.camera_alt_outlined, Colors.pink, "Project"),
                  SizedBox(
                    width: 100,
                  ),
                ],
              ),
              // Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: List.generate(3, (index) => buildDot(index: index)))
            ],
          ),
        ),
      );
    });
  }

  Widget iconCreation(IconData icons, Color color, String text) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: Icon(
              icons,
              // semanticLabel: "Help",
              size: 29,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              // fontWeight: FontWeight.w100,
            ),
          )
        ],
      ),
    );
  }
// Container buildDot({required int index}) {
//   return Container(
//     margin: EdgeInsets.only(right: 5),
//     height: 6,
//     width: 6,
//     decoration: BoxDecoration(
//       color: currentPage == index ? Colors.red : secondaryTextColor,
//       borderRadius: BorderRadius.circular(3),
//     ),
//   );
// }
}
