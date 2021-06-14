// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
//
// class CarouselWithDotsPage extends StatefulWidget {
//   List<String> imgList;
//
//   CarouselWithDotsPage({this.imgList});
//
//   @override
//   _CarouselWithDotsPageState createState() => _CarouselWithDotsPageState();
// }
//
// class _CarouselWithDotsPageState extends State<CarouselWithDotsPage> {
//   int _current = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     final double mheight = MediaQuery
//         .of(context)
//         .size
//         .height;
//     final double mwidth = MediaQuery
//         .of(context)
//         .size
//         .width;
//     final List<Widget> imageSliders = widget.imgList
//         .map((item) => Container(
//       //height: mheight*0.28,
//       //width: mwidth*0.85,
//       //width: mwidth,
//       child: ClipRRect(
//         borderRadius: BorderRadius.all(
//           Radius.circular(10.0),
//         ),
//         child: Image.asset(
//           item,
// fit: BoxFit.contain,
//           width: mwidth,
//           //fit: BoxFit.cover,
//           //width: 1000,
//         ),
//       ),
//     ))
//         .toList();
//
//     return Container(
//       width: mwidth,
//       child: Column(
//         children: [
//           CarouselSlider(
//             items: imageSliders,
//             options: CarouselOptions(
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//                 //aspectRatio: 2.0,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     _current = index;
//                   });
//                 }),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: widget.imgList.map((url) {
//               int index = widget.imgList.indexOf(url);
//               return Container(
//                 width: 8,
//                 height: 8,
//                 margin: EdgeInsets.symmetric(
//                   vertical: 10,
//                   horizontal: 3,
//                 ),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: _current == index
//                       ? Color.fromRGBO(0, 0, 0, 0.9)
//                       : Color.fromRGBO(0, 0, 0, 0.4),
//                 ),
//               );
//             }).toList(),
//           )
//         ],
//       ),
//     );
//   }
// }

//Carasoul
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

appCarousal(BuildContext context){
  return  Container(
    height: MediaQuery.of(context).size.height * 0.30,
    decoration:
    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
    margin: EdgeInsets.only(
        top: 5.0, left: 8.0, right: 8.0, bottom: 18.0),
    child: Carousel(
      radius: Radius.circular(10.0),
      dotSize: 4,
      dotPosition: DotPosition.bottomCenter,
      animationCurve: Curves.ease,
      //dotColor: primaryColor,
      borderRadius: true,
      showIndicator: true,
      noRadiusForIndicator: false,
      dotBgColor: Colors.transparent,
      //dotBgColor:Colors.white ,
      images: [
        ExactAssetImage('$imgpath/carads0.jpg'),
        ExactAssetImage('$imgpath/carads1.jpg'),
        ExactAssetImage('$imgpath/carads2.jpg'),
        ExactAssetImage('$imgpath/carads3.jpg'),
        // ExactAssetImage('assets/images/house1.jpg'),
        // ExactAssetImage('assets/images/house2.jpg'),
      ],
    ),
  );
}