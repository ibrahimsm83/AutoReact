//
import 'package:autoreact/pages/homescreen.dart';
import 'package:autoreact/utils/constants.dart';
import 'package:autoreact/utils/widgets/bottomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:autoreact/pages/chat_inner_screen.dart';


class ChatPage extends StatefulWidget {
  //final bool isSearchPresses;
  //ChatPage(this.isSearchPresses);
// ChatPage({ Key? key, required this.isSearchPresses }) : super(key: key);
 // ChatPage({  this.isSearchPresses}) ;
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<Map> _userlList = [
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "John Smith",
      'userSubtitle': 'Car Delar',
      'details':'Lorem ipsum dolor sit amet...',
      'userTime': '20:35',
      'userIsUnreadMessage': false,
      'userIsOnline': true,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "John Smith",
      'userSubtitle': 'Car Buyer',
      'details':'Lorem ipsum dolor sit amet...',
      'userTime': '20:35',
      'userIsUnreadMessage': false,
      'userIsOnline': false,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "John Smith",
      'userSubtitle': 'Car Saler',
      'details':'Lorem ipsum dolor sit amet...',
      'userTime': '20:35',
      'userIsUnreadMessage': true,
      'userIsOnline': false,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "John Smith",
      'userSubtitle': 'Car Delar',
      'details':'Lorem ipsum dolor sit amet...',
      'userTime': '20:35',
      'userIsUnreadMessage': true,
      'userIsOnline': false,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "John Smith",
      'userSubtitle': 'Car Buyer',
      'details':'Lorem ipsum dolor sit amet...',
      'userTime': '20:35',
      'userIsUnreadMessage': false,
      'userIsOnline': false,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle':"John Smith",
      'userSubtitle': 'Car Delar',
      'details':'Lorem ipsum dolor sit amet...',
      'userTime': '20:35',
      'userIsUnreadMessage': false,
      'userIsOnline': false,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "John Smith",
      'userSubtitle': 'Car Delar',
      'details':'Lorem ipsum dolor sit amet...',
      'userTime': '20:35',
      'userIsUnreadMessage': false,
      'userIsOnline': false,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "John Smith",
      'userSubtitle': 'Car Buyer',
      'details':'Lorem ipsum dolor sit amet...',
      'userTime': '20:35',
      'userIsUnreadMessage': false,
      'userIsOnline': false,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "John Smith",
      'userSubtitle': "Car Saler",
      'details':'Lorem ipsum dolor sit amet...',
      'userTime': '20:35',
      'userIsUnreadMessage': false,
      'userIsOnline': false,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle':"John Smith",
      'userSubtitle': 'Car Delar',
      'details':'Lorem ipsum dolor sit amet...',
      'userTime': '20:35',
      'userIsUnreadMessage': false,
      'userIsOnline': false,
    },
    {
      'userProfileImage':"$imgpath/user1.jfif",
      'userTitle': "John Smith",
      'userSubtitle': 'Car Buyer',
      'details':'Lorem ipsum dolor sit amet...',
      'userTime': '20:35',
      'userIsUnreadMessage': false,
      'userIsOnline': false,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "John Smith",
      'userSubtitle': "Car Saler",
      'details':'Lorem ipsum dolor sit amet...',
      'userTime': '20:35',
      'userIsUnreadMessage': false,
      'userIsOnline': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text('CHAT'),
          leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child:Icon(Icons.arrow_back)),
          actions: [
            Icon(Icons.search,size: 24,),
            SizedBox(width: 10,),
            GestureDetector(child: Icon(Icons.more_vert,size: 24,)),
            SizedBox(width: 10,),
          ],
        ),
        //bottombar
        bottomNavigationBar: Bottomappbar(SvgIconsList,context),
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
        //bottombar end
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              Container(
                height: 60,
                //constraints: BoxConstraints(maxHeight: 200.0),
                child: Material(
                  //color: Colors.indigo,
                  color: Colors.white,
                  child: TabBar(
                    unselectedLabelColor: Colors.black,
                    labelColor: primaryColor,
                    indicatorColor: primaryColor,
                    indicatorWeight: 4.0,
                    tabs: [
                      Container(child: Text("ALL",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),),
                      Container(child: Text("BUYING",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),),
                      Container(child: Text("SELLING",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),),
                     // Tab(icon: Icon(Icons.directions_car)),
                     //  Tab(icon: Icon(Icons.directions_transit)),
                     //  Tab(icon: Icon(Icons.directions_bike)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    allusers(),
                   // Icon(Icons.directions_car),
                    Icon(Icons.directions_transit),
                    Icon(Icons.directions_bike),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
  );
}
Widget allusers() {
  return SingleChildScrollView(
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 1,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: _userlList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.5),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatInnerScreen(
                          imageIndex: _userlList[index]
                          ["userProfileImage"],
                          title: _userlList[index]["userTitle"],
                          subtitle: "Last seen today 4:30 pm",
                      )),
                    );
                    //Navigator.pushNamed(context,'homepath');
                    // Navigator.push(context, MaterialPageRoute(builder: build,ChatInnerScreen()))
                    // Get.to(ChatInnerScreen(
                    //   imageIndex: _userlList[index]
                    //   ["userProfileImage"],
                    //   title: _userlList[index]["userTitle"],
                    //   subtitle: "Last seen today 4:30 pm",
                    // ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: _userlList[index]
                      ['userIsUnreadMessage']
                          ? Colors.grey.shade100
                          : white_Color,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 1,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Row(

                      children: <Widget>[
                        SizedBox(
                          width: 12.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(30.0),
                                image: DecorationImage(
                                    image: AssetImage(
                                      _userlList[index]
                                      ['userProfileImage'],
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Column(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _userlList[index]['userTitle'],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              _userlList[index]['userSubtitle'],
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: primaryColor,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              _userlList[index]['details'],
                              style: TextStyle(
                                fontSize: 12,
                                color: text_Color,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        Spacer(),
                        Spacer(),
                        Spacer(),


                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 00.0),
                              child: Text(
                                _userlList[index]['userTime'],
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color:_userlList[index]['userIsOnline']==true? primaryColor:Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            _userlList[index]['userIsOnline']==true?CircleAvatar(backgroundColor: primaryColor,radius: 10,child: Text("2"),):SizedBox(),
                          ],
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    ),
  );
}
}
