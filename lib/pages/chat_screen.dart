//
import 'package:autoreact/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';


class ChatPage extends StatefulWidget {
  final bool isSearchPresses;
  //ChatPage(this.isSearchPresses);
// ChatPage({ Key? key, required this.isSearchPresses }) : super(key: key);
  ChatPage({  this.isSearchPresses}) ;
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<Map> _userlList = [
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "HTG7",
      'userSubtitle': 'Yes !!!',
      'userTime': '5:30',
      'userIsUnreadMessage': false,
      'userIsOnline': true,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "Muhammad Uzair",
      'userSubtitle': 'Okey',
      'userTime': '12:30',
      'userIsUnreadMessage': false,
      'userIsOnline': true,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "Charles Jackson",
      'userSubtitle': 'Yes !!!',
      'userTime': '15:30',
      'userIsUnreadMessage': true,
      'userIsOnline': true,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "HTG2",
      'userSubtitle': 'Sure bro',
      'userTime': 'Today',
      'userIsUnreadMessage': true,
      'userIsOnline': false,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "HTG2",
      'userSubtitle': 'Okey',
      'userTime': 'Yesterday',
      'userIsUnreadMessage': false,
      'userIsOnline': true,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "HTG 6",
      'userSubtitle': '6/03/2021',
      'userTime': '5:30',
      'userIsUnreadMessage': false,
      'userIsOnline': true,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "HTG 6",
      'userSubtitle': 'How are you?',
      'userTime': '5/03/2021',
      'userIsUnreadMessage': false,
      'userIsOnline': false,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "HTG 4",
      'userSubtitle': 'Okey',
      'userTime': '4/03/2021',
      'userIsUnreadMessage': false,
      'userIsOnline': true,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "HTG7",
      'userSubtitle': 'Sure bro',
      'userTime': '4/03/2021',
      'userIsUnreadMessage': false,
      'userIsOnline': false,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "HTG7",
      'userSubtitle': 'Yes !!!',
      'userTime': '4/03/2021',
      'userIsUnreadMessage': false,
      'userIsOnline': false,
    },
    {
      'userProfileImage':"$imgpath/user1.jfif",
      'userTitle': "HTG7",
      'userSubtitle': 'okey.',
      'userTime': '4/03/2021',
      'userIsUnreadMessage': false,
      'userIsOnline': false,
    },
    {
      'userProfileImage': "$imgpath/user1.jfif",
      'userTitle': "HTG7",
      'userSubtitle': 'Yes !!!',
      'userTime': '4/03/2021',
      'userIsUnreadMessage': false,
      'userIsOnline': true,
    },
  ];

  @override
  Widget build(BuildContext context) =>
      SafeArea(
        child:Scaffold(
          appBar: AppBar(
            title: Text("Chat Screen"),
          ),
    body: SingleChildScrollView(
      child: Column(
    children: <Widget>[
      widget.isSearchPresses
          ? SizedBox()
          :
      // Padding(
      //   padding: EdgeInsets.symmetric(vertical: 2.0),
      //   child: Container(
      //     width: double.infinity,
      //     height: 110.0,
      //     decoration: BoxDecoration(
      //       color: white_Color,
      //       boxShadow: [
      //         BoxShadow(
      //           color: Colors.grey.shade300,
      //           blurRadius: 2,
      //           offset: const Offset(0, 2),
      //         ),
      //       ],
      //     ),
      //     child: SingleChildScrollView(
      //       scrollDirection: Axis.horizontal,
      //       child: Row(
      //         children: <Widget>[
      //           Padding(
      //             padding: EdgeInsets.all(8.0),
      //             child: Container(
      //               height: 100.0,
      //               child: ListView.builder(
      //                 shrinkWrap: true,
      //                 itemCount: _userlList.length,
      //                 scrollDirection: Axis.horizontal,
      //                 itemBuilder:
      //                     (BuildContext context, int index) {
      //                   return _userlList[index]['userIsOnline']
      //                       ? Padding(
      //                       padding: EdgeInsets.all(8.0),
      //                       child: Column(
      //                         children: <Widget>[
      //                           Stack(
      //                             alignment:
      //                             Alignment.bottomRight,
      //                             children: [
      //                               Container(
      //                                 width: 60.0,
      //                                 height: 60.0,
      //                                 decoration:
      //                                 BoxDecoration(
      //                                   borderRadius:
      //                                   BorderRadius
      //                                       .circular(
      //                                       30.0),
      //                                   image:
      //                                   DecorationImage(
      //                                       image:
      //                                       AssetImage(
      //                                         _userlList[
      //                                         index]
      //                                         [
      //                                         'userProfileImage'],
      //                                       ),
      //                                       fit: BoxFit
      //                                           .cover),
      //                                 ),
      //                               ),
      //                               Padding(
      //                                 padding:
      //                                 const EdgeInsets
      //                                     .all(4.0),
      //                                 child: Container(
      //                                   width: 10.0,
      //                                   height: 10.0,
      //                                   decoration: BoxDecoration(
      //                                       color:
      //                                       Colors.green,
      //                                       borderRadius:
      //                                       BorderRadius
      //                                           .circular(
      //                                           5.0)),
      //                                 ),
      //                               )
      //                             ],
      //                           ),
      //                           Container(
      //                             width: 50.0,
      //                             child: Text(
      //                               _userlList[index]
      //                               ['userTitle'],
      //                               overflow: TextOverflow
      //                                   .ellipsis,
      //                             ),
      //                           ),
      //                         ],
      //                       ))
      //                       : Container();
      //                 },
      //               ),
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      Container(
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
                                  color:primaryColor,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment:
                            CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 30.0),
                                child: Text(
                                  _userlList[index]['userTime'],
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.green,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
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
    ],
      ),
    ),
    ),
        // Padding(
        //   padding: const EdgeInsets.all(16.0),
        //   child: Container(
        //     width: 60.0,
        //     height: 60.0,
        //     decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //       color: primaryColor,
        //     ),
        //     child: IconButton(
        //       icon: Icon(
        //         Icons.message,
        //         size: 30.0,
        //         color: Colors.white,
        //       ),
        //       onPressed: () {
        //         //Get.to(ContactScreen());
        //       },
        //     ),
        //   ),
        // ),

  );
}

