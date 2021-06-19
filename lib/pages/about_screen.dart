


import 'package:autoreact/utils/constants.dart';
import 'package:autoreact/utils/widgets/customappbar.dart';
import 'package:flutter/material.dart';

class aboutscreen extends StatefulWidget {
  @override
  _aboutscreenState createState() => _aboutscreenState();
}

class _aboutscreenState extends State<aboutscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MycustomAppBar(" "),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //color: Colors.yellow,
            height: sizeheight(context)*0.3,
              width: sizeWidth(context),
          decoration: new BoxDecoration(
            //color: Colors.red,
           // borderRadius: BorderRadius.circular(),
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black54, BlendMode.darken),
              image: AssetImage(
                '$imgpath/about.png'
                  //imgListpost
              ),
              fit: BoxFit.fill,
            ),
            ),
              child: Center(child:Text("ABOUT US",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 24),)),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.topLeft,
            child:
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
             // padding: EdgeInsets.only(left:8.0),
              child: Text("About Company",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),),),
            SizedBox(height: 10.0,),
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              child: Text('''Students & Writers mostly look for some questions when coming to paragraph writing about any topic or thing or person. The questions raised by most of the students while thinking about writing a paragraph are Paragraph Writing Examples, What is the perfect paragraph format? How many steps involved to write a paragraph? How to write a good paragraph? How many sentences are included in a para? and many more like these. ''',
              style: TextStyle(color: text_Color),),
            ),
            SizedBox(height: 10.0,),
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
             // padding: EdgeInsets.all(8.0),
              child: Text('''Students & Writers mostly look for some questions when coming to paragraph writing about any topic or thing or person. The questions raised by most of the students while thinking about writing a paragraph are Paragraph Writing Examples, What is the perfect paragraph format? How many steps involved to write a paragraph? How to write a good paragraph? How many sentences are included in a para? and many more like these. '''
              , style: TextStyle(color: text_Color),),
            ),
            SizedBox(height: 10.0,),
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
             // padding: EdgeInsets.all(8.0),
              child: Text('''Students & Writers mostly look for some questions when coming to paragraph writing about any topic  ''', style: TextStyle(color: text_Color),),
            ),
            SizedBox(height: 10.0,),
            Align(
              alignment: Alignment.topLeft,
              child:
              Container(

                padding: EdgeInsets.only(left:15.0),
                child: Text("Location",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),),),
            //MAP
            SizedBox(height: 10.0,),
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              //color: Colors.yellow,
              //padding: EdgeInsets.all(20.0),
              height: sizeheight(context)*0.28,
              width: sizeWidth(context),
              decoration: new BoxDecoration(
                //color: Colors.red,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  // colorFilter: ColorFilter.mode(
                  //     Colors.black54, BlendMode.darken),
                  image: AssetImage(
                      '$imgpath/map.png'
                    //imgListpost
                  ),
                  fit: BoxFit.fill,
                ),
              ),
             // child: Center(child:Text("ABOUT US",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 24),)),
            ),
            SizedBox(height: 10.0,),
          ],
        ),
      ),
    );
  }
}
