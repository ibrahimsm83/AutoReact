import 'package:autoreact/utils/api.dart';
import 'package:autoreact/utils/constants.dart';
import 'package:autoreact/utils/widgets/customappbar.dart';
import 'package:flutter/material.dart';

class FindFriendspg extends StatefulWidget {
  @override
  _FindFriendspgState createState() => _FindFriendspgState();
}

class _FindFriendspgState extends State<FindFriendspg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MycustomAppBar("FIND FRIENDS"),
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

                    //institute names
                  ]),
            ),
          ),
          //gridview
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                margin: EdgeInsets.only(
                    left: sizeWidth(context) * 0.02,
                    right: sizeWidth(context) * 0.02),
                height: sizeheight(context),
                //width: 380,
                child: GridView.builder(
                    itemCount: findFrinends.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        // maxCrossAxisExtent: 200,
                        childAspectRatio: 3 / 3.5,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Card(
                          child: Container(
                            height: 150,
                            //color: Colors.red,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                CircleAvatar(
                                  radius: 40,
                                  //backgroundColor: Colors.yellow,
                                  backgroundImage:
                                      AssetImage(findFrinends[index]['image']),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  findFrinends[index]['usersName'],
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  findFrinends[index]['position'],
                                  style: TextStyle(
                                      fontSize: 14, color: text_Color),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: sizeWidth(context) * 0.09,
                                      right: sizeWidth(context) * 0.09),
                                  // color: Colors.green,
                                  height: 34,
                                  width: sizeWidth(context),
                                  decoration: BoxDecoration(
                                    //color: Colors.white,
                                    // border: Border.all(color: Colors.blueAccent),
                                    border: Border.all(
                                        color: primaryColor, width: 1.5),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Add Friends",
                                    style: TextStyle(color: primaryColor),
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
