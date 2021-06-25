import 'package:autoreact/utils/constants.dart';
import 'package:autoreact/utils/widgets/customappbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Carevents extends StatefulWidget {
  @override
  _CareventsState createState() => _CareventsState();
}

class _CareventsState extends State<Carevents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MycustomAppBar("Car Events"),
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
          Container(
            margin: EdgeInsets.only(top:15.0),
           // color: Colors.red,
          //margin: EdgeInsets.only(top:15.0,left: 25,right: 25),
    height: 415,
    //color: Colors.red,
    child: ListView.builder(
    shrinkWrap: true,
    itemCount:5,
    itemBuilder: (context, index) {
    return crevent();
    },
      scrollDirection: Axis.horizontal,
    )
          ),
          // SizedBox(
          //   height: 10,
          // )
        ],
      ),
    );
  }
}

Widget crevent(){
  return  Stack(
    children:[
      Container(
        margin: EdgeInsets.only(top:0.0,left: 10,right: 10),
        height: 415,
        // color: Colors.yellow,
        child:Column(
          children: [
            Container(
              height: 250,
              width: 400,
              decoration: new BoxDecoration(
                //color: Colors.red,
                // borderRadius: BorderRadius.circular(15),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0)),
                image: DecorationImage(
                  image: AssetImage(
                    "$imgpath/car2.jpg",
                  ),
                  fit: BoxFit.contain,
                ),
              ),
              //color:Colors.yellow,
            ),
            Container(
              //color: Colors.green,
              width:400,
              child: Column(
                children: [
                  Container(
                    // height: 30,
                    padding: EdgeInsets.only(top:5.0),
                    margin: EdgeInsets.only(right: 15,left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 10,),
                        Text("Event77",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(width: 10,),
                        SizedBox(width: 20,),
                        SvgPicture.asset( "$imgpath/save.svg",height: 22,width: 22,),
                      ],),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                    //width: 400,
                    //height: 150,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 35,
                              width: 80,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Center(child: Text("Online",style: TextStyle(color: Colors.white),)),
                            ),
                            SizedBox(width: 20,),
                            Container(child: Text("Category: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                            Container(child: Text("Conference",style: TextStyle(color:text_Color,fontSize: 18,),),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: primaryColor)
                              ),
                              child: Center(child: Text("Go",style: TextStyle(color: primaryColor),)),
                            ),
                            SizedBox(width: 10,),
                            Container(child: Text("Going: ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
                            Container(child: Text("3",style: TextStyle(color:text_Color,fontSize: 18,),),),
                            SizedBox(width: 20,),
                            //interested
                            Container(
                              child: Icon(Icons.star_border,color: primaryColor,),
                            ),
                            SizedBox(width: 10,),
                            Container(child: Text("Interested: ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
                            Container(child: Text("4",style: TextStyle(color:text_Color,fontSize: 18,),),),
                          ],
                        ),
                        SizedBox(height: 5.0,),
                        Row(
                          children: [
                            //"$imgpath/EventsFillAdd.svg",
                            Container(
                              height: 30,
                              width: 30,
                              child: SvgPicture.asset( "$imgpath/EventsFillAdd.svg",height: 20,width: 20,color: primaryColor,),
                            ),
                            SizedBox(width: 10,),
                            Container(child: Text("Event Date: ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
                            Container(child: Text("23 Jan 2021",style: TextStyle(color:text_Color,fontSize: 16,),),),
                            //interested
                          ],
                        )
                      ],
                    ),
                    color: Colors.white,
                  )
                ],
              ),
            ) ,//
          ],
        ),
      ),
      Positioned(
        // top: 50,
        left: 30,
        bottom: 130,
        child: InkWell(
            onTap: (){
              //Navigator.pop(context);
            },
            child: Container(
              height: 58,
              width: 55,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Jan",style: TextStyle(color: primaryColor,fontSize: 18,fontWeight: FontWeight.bold),),
                  Text("23",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                ],
              ),
            )
        ),
      ),
    ],
  );
}