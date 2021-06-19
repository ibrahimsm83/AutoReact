import 'package:autoreact/utils/api.dart';
import 'package:autoreact/utils/constants.dart';
import 'package:autoreact/utils/widgets/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CarDelarspg extends StatefulWidget {
  @override
  _CarDelarspgState createState() => _CarDelarspgState();
}

class _CarDelarspgState extends State<CarDelarspg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MycustomAppBar("CAR DELARS"),
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
            //car delars
        Flexible(
          child: Container(
            height: sizeheight(context),
            child: ListView.builder(
               itemCount: cardelarsList.length,
               itemBuilder: (context,index){
      return  Container(
           // color: Colors.green,
            margin: EdgeInsets.only(left: 8.0,right: 8.0,bottom: 5.0,top: 5.0),
                 decoration: BoxDecoration(
                 border: Border(
                // top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
                 bottom: BorderSide(width: 1.0, color: text_Color),
                 ),
                 ),
            child:Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom:8.0),
                  child:
                CircleAvatar(
                  radius: 40,
                  //backgroundColor: Colors.yellow,
                  backgroundImage:
                  AssetImage(cardelarsList[index]['image']),
                ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                cardelarsList[index]['usersName'],
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        //Hyndicar delar
                        Text(
                          cardelarsList[index]['Company'],
                          style: TextStyle(
                            fontSize: 16,color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    //Review
                    Row(
                      children: [
                        //Star rating
                        RatingBar.builder(
                          itemSize: 18.0,
                          initialRating: double.parse(cardelarsList[index]['Rating'].toString()),
                         // initialRating: 3,
                          minRating: 1,
                          glowColor: Colors.yellow,
                          direction: Axis.horizontal,
                          //allowHalfRating: true,
                          itemCount: 5,
                          //itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: primaryColor,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(width: 10,),
                        //rating2
                        Text(
                          "${cardelarsList[index]['Reviews']} Reviews",
                          style: TextStyle(
                              fontSize: 14,
                              color: text_Color
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                            height: 18,
                            width: 2,
                            color: text_Color
                        ),
                        SizedBox(width: 10,),
                        //rating3
                        Text(
                          "Listings : ${cardelarsList[index]['Reviews']}",
                          // "Listings : 23",
                          style: TextStyle(
                              fontSize: 14,
                              color: text_Color
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    //address
                    Text(
                      cardelarsList[index]['address'],
                      style: TextStyle(
                          fontSize: 14,
                          color: text_Color
                      ),
                    ),
                  ],)
              ],
            ) ,

      );

    }),

          ),
        ),

      ],
    ),);
  }
}
