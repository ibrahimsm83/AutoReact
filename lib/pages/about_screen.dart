


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
      body: Column(
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
              '$imgpath/car2.jpg'
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
          Container(child: Text("About Company",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),),),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text('''Students & Writers mostly look for some questions when coming to paragraph writing about any topic or thing or person. The questions raised by most of the students while thinking about writing a paragraph are Paragraph Writing Examples, What is the perfect paragraph format? How many steps involved to write a paragraph? How to write a good paragraph? How many sentences are included in a para? and many more like these. '''),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text('''Students & Writers mostly look for some questions when coming to paragraph writing about any topic or thing or person. The questions raised by most of the students while thinking about writing a paragraph are Paragraph Writing Examples, What is the perfect paragraph format? How many steps involved to write a paragraph? How to write a good paragraph? How many sentences are included in a para? and many more like these. '''),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text('''Students & Writers mostly look for some questions when coming to paragraph writing about any topic  '''),
          )
        ],
      ),
    );
  }
}
