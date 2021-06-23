//Audio call Screen
import 'package:autoreact/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AudioCallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
     width: sizeWidth(context),
     height: sizeheight(context),
     //color: Colors.green,
     //height: sizeHeight(context),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         Container(
           height: 200,
           width: sizeWidth(context),
           color: primaryColor,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
            Container(
              // height:50,
              // width: 50,
              padding:EdgeInsets.only(left: 15.0,top: 30),
                child: Icon(Icons.arrow_drop_down,color:white_Color ,size: 40,)),
               Center(child: Container(child: Text("John Smith",style: TextStyle(color: white_Color,fontSize: 24,fontWeight: FontWeight.bold),),)),
               Center(child: Container(child: Text("Calling",style: TextStyle(color: white_Color,),),)),
               SizedBox(height: 30,),

             ],
           ),
         ),
         Stack(
           children: [
        Container(
               height: 540,
               // color: Colors.yellow,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage(
                     //audiocallbgpic
                       '$imgpath/audiocallbgpic.png'
                     // 'assets/assets/alucard.jpg'
                   ),
                   fit: BoxFit.fill,
                 ),
               ),
             ),
        Positioned(
                  // top: 50,
                   left: 170,
                   bottom: 30,
                   child: InkWell(
                     onTap: (){
                       Navigator.pop(context);
                     },
                    child: CircleAvatar(backgroundColor: primaryColor,radius: 30,child:Icon(Icons.call,size:34,color: Colors.white,) ,),
                   ),
             )
                 //child:Icon(Icons.call,color: Colors.yellow,size: 50,)),
           ],

         ),

         Container(
           height: sizeheight(context)*0.14,
           color: primaryColor,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                 width: 55.0,
                 height: 55.0,
                 child: Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: SvgPicture.asset(
                     '$imgpath/svgicon/Speaker.svg',
                     color: white_Color,
                   ),
                 ),

               ),
               Container(
                 width: 55.0,
                 height: 55.0,
                 child: Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: SvgPicture.asset(
                     '$imgpath/svgicon/Video Call.svg',
                     //color: defaultColor,
                     color: white_Color,
                   ),
                 ),
               ),
               Container(
                 width: 55.0,
                 height: 55.0,

                 child: Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: SvgPicture.asset(
                     '$imgpath/svgicon/Voice.svg',
                     color: white_Color,
                   ),
                 ),
               ),
             ],
           ),
         ),
       ],
     ),
       ),
    );
  }
}