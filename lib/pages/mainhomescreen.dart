


import 'package:autoreact/utils/api.dart';
import 'package:autoreact/utils/constants.dart';
import 'package:autoreact/utils/widgets/carousel.dart';
import 'package:autoreact/utils/widgets/postes.dart';
import 'package:flutter/material.dart';

class MainHomeScreen extends StatefulWidget {
  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}
//carousel images
final List<String> imgList = [
  "$imgpath/carads0.jpg",
  "$imgpath/carads1.jpg",
  "$imgpath/carads2.jpg",
  "$imgpath/carads3.jpg",
];
final List<String> imgListpost = [
  "$imgpath/car1.jfif",
  "$imgpath/car2.jpg",
  "$imgpath/car3.jfif",
  "$imgpath/car4.jpg",
];
//svg icons
final List<String> SvgIconsList = [
  "$imgpath/Lcotion.svg",
  "$imgpath/Notification.svg",
  "$imgpath/Home.svg",
  "$imgpath/account.svg",
  "$imgpath/care.svg",
  "$imgpath/message.svg",
  "$imgpath/save.svg",
  // "$imgpath/car3.jfif",
  // "$imgpath/car4.jpg",
];


class _MainHomeScreenState extends State<MainHomeScreen> {
 // RangeValues _currentRangeValues = const RangeValues(20, 60);
  RangeValues values = RangeValues(100, 300);
  RangeLabels labels =RangeLabels('1', "300");
  int minvalue=100;
  int maxvalue=300;

  String favouriteicon = "$imgpath/savefillicon.svg";
  bool _checkboxForSale = false;
  bool _checkboxForBuy = false;
  bool _checkboxForRent=false;
  bool colorva = false;
  bool colorvalchek=false;
  bool colorva1=false;
  bool colorva2=false;

  bool listingbtn = false;
  bool v_carprice = false;
  bool brandCtg = false;
  bool  tab=false;
  var value;

  int index = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
                Column(
        children: [

          //item list
          Container(
            margin: EdgeInsets.only(top: 10,left: 4.0,right: 4.0),
            width: sizeWidth(context),
            height: sizeheight(context) * 0.03,
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      listingbtn = true;
                      v_carprice=false;
                      brandCtg=false;

                      if(colorva==true){
                        colorva=false;
                        listingbtn=false;
                      }else{
                        colorva=true;
                      }
                      if(colorvalchek==true&&colorva1==true) {
                        colorvalchek = true;
                        colorva1=false;
                      }
                      else if(colorvalchek==true&&colorva2==true){
                        colorvalchek = true;
                        colorva2=false;
                      }
                      else{
                        colorvalchek = true;
                      }
                    });
                  },
                  child: Container(
            padding: EdgeInsets.fromLTRB(25, 4, 25, 4),
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor),
        color: colorva&&colorvalchek?primaryColor:white_Color,
        borderRadius: BorderRadius.circular(8),
                  ),
                    child: Text("LISTING",
                      style: TextStyle(
                          //color:primaryColor,
                        color:colorva&&colorvalchek?white_Color:primaryColor,
                          fontWeight: FontWeight.bold,fontSize: 13),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      //
                      v_carprice=true;
                      listingbtn = false;
                      brandCtg=false;
                      //
                      if(colorva1==true){
                        colorva1=false;
                        v_carprice=false;
                      }else{
                        colorva1=true;
                      }
                      if(colorvalchek==true&&colorva==true) {
                        colorvalchek = true;
                        colorva=false;
                      } else if(colorvalchek==true&&colorva2==true){
                        colorvalchek = true;
                        colorva2=false;
                      }
                      else{
                        colorvalchek = true;
                      }
                      //colorvalchek=true;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(25, 4, 25, 4),
                    decoration: BoxDecoration(
                      border: Border.all(color: primaryColor),
                      color: colorva1&&colorvalchek?primaryColor:white_Color,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text("CAR PRICE",
                      //categeriesNames[index]['categeriesNames'],
                      style: TextStyle(
                          color:colorva1&&colorvalchek?white_Color:primaryColor,
                          fontWeight: FontWeight.bold,fontSize: 13),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      brandCtg=true;
                      v_carprice=false;
                      listingbtn = false;

                      if(colorva2==true)
                      {
                        colorva2=false;
                        brandCtg=false;
                      }else{
                        colorva2=true;
                      }
                      if(colorvalchek==true&&colorva1==true) {
                        colorvalchek = true;
                        colorva1=false;
                      }
                      else if(colorvalchek==true&&colorva==true){
                        colorvalchek = true;
                        colorva=false;
                      }
                      else{
                        colorvalchek = true;
                      }
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                    decoration: BoxDecoration(
                      border: Border.all(color: primaryColor),
                      color: colorva2&&colorvalchek?primaryColor:white_Color,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text("BRAND CATEGORY",
                      //categeriesNames[index]['categeriesNames'],
                      style: TextStyle(
                          color:colorva2&&colorvalchek?white_Color:primaryColor,
                          fontWeight: FontWeight.bold,fontSize: 13),
                    ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 10),
          //users
Expanded(
  child:
          SingleChildScrollView(
            child: listingbtn?
            CarListing():v_carprice?
            carprice():brandCtg?brandCategory():Homebody(),
            //    :tab?pages[index]:Homebody(),
          ),
),
        ],
      ),
    );
  }
  /*----------------------------------Homebody--------------------------------------- */
  Widget Homebody(){
    return  Column(
      children: [
        Container(
          // color: Colors.red,
          height: sizeheight(context) * 0.12,
          //margin: EdgeInsets.only(bottom:10.),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: usersDetails.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.only(right: 3.0, left: 3.0),
                    child: Container(
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 33,
                          //backgroundImage:AssetImage(usersDetails[index]['image']),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Image.asset(
                                usersDetails[index]['image'],
                                width: 150,
                                height: 150,
                              )),
                          // AssetImage(usersDetails[index]['image']),
                        ),
                      ),
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: new Border.all(
                          color: primaryColor,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  Text(usersDetails[index]['usersName']),
                  //Text("users")
                ],
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        //schools image
        UserPostes(
            context, imgListpost[0], SvgIconsList[6], text_Color),
        //craouser
        appCarousal(context),
        // CarouselWithDotsPage(imgList: imgList),
        //schools image
        UserPostes(
            context, imgListpost[1], SvgIconsList[6], text_Color),
        // //GridView
        Container(
            margin: EdgeInsets.only(left: 8, right: 8, bottom: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        "Areas",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        "View All",
                        style: TextStyle(
                            fontSize: 18, color: primaryColor),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //Schools
                    Container(
                      width: sizeWidth(context) * 0.43,
                      height: sizeheight(context) * 0.16,
                      decoration: new BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(20.0)),
                        image: new DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black38, BlendMode.darken),
                          image:
                          ExactAssetImage('$imgpath/Nashville.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Nashville",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    //
                    //             //Collages
                    Container(
                      width: sizeWidth(context) * 0.43,
                      height: sizeheight(context) * 0.16,
                      decoration: new BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(20.0)),
                        image: new DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black38, BlendMode.darken),
                          image:
                          ExactAssetImage('$imgpath/chicago.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("Chicago",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //Schools
                    Container(
                      width: sizeWidth(context) * 0.43,
                      height: sizeheight(context) * 0.16,
                      decoration: new BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(20.0)),
                        image: new DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black38, BlendMode.darken),
                          image: ExactAssetImage(
                              '$imgpath/upcomingcars.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("Upcoming Cars",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                      ),
                    ),
                    //Collages
                    Container(
                      width: sizeWidth(context) * 0.43,
                      height: sizeheight(context) * 0.16,
                      decoration: new BoxDecoration(
                        //color: Colors.black,
                        borderRadius:
                        BorderRadius.all(Radius.circular(20.0)),
                        image: new DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black38, BlendMode.darken),
                          image:
                          ExactAssetImage('$imgpath/newyork.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("New York City",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                      ),
                    ),
                  ],
                )
              ],
            )),
        // //Schools images posts
        UserPostes(
            context, imgListpost[2], SvgIconsList[6], text_Color),
        UserPostes(
            context, imgListpost[3], SvgIconsList[6], text_Color),
        // //Listview builder
        //dsfjskldjfkls
        Container(
          margin: EdgeInsets.only(left: 5, right: 8, bottom: 10),
          //color: Colors.red,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Expert Review",
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "View All",
                      style:
                      TextStyle(fontSize: 18, color: primaryColor),
                    ),
                  ),
                ],
              ),
              Container(
                // height: sizeheight(context),

                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: teacherReviews.length,
                    itemBuilder: (BuildContext, index) {
                      return Container(
                        margin: EdgeInsets.only(
                            left: 8, right: 8, bottom: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: sizeheight(context) * 0.14,
                              width: sizeWidth(context) * 0.3,
                              decoration: new BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10.0)),
                                image: new DecorationImage(
                                  image: ExactAssetImage(
                                      teacherReviews[index]['image']),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    teacherReviews[index]['Acadmyname'],
                                    style:
                                    TextStyle(color: primaryColor),
                                  ),
                                  SizedBox(height: 8),
                                  Container(
                                      width: sizeWidth(context) * 0.52,
                                      //color: Colors.red,
                                      child: Text(
                                        teacherReviews[index]['Review'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      )),
                                  SizedBox(height: 8),
                                  Row(
                                    children: [
                                      Text(
                                          teacherReviews[index]
                                          ['Reviewersname'],
                                          style: TextStyle(
                                              color: text_Color)),
                                      Text("  |  "),
                                      Text(
                                          teacherReviews[index]['Date'],
                                          style: TextStyle(
                                              color: text_Color)),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              //SizedBox(height: 20),
              UserPostes(
                  context, imgListpost[3], SvgIconsList[6], text_Color),
            ],
          ),
        ),
      ],
    );
  }
  /*----------------------------------carprice--------------------------------------- */
  Widget carprice() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            width: sizeWidth(context)*0.6,
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            decoration: BoxDecoration(
              border: Border.all(color: text_Color,width: 2.0),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Price Range:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "${minvalue}k - ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "${maxvalue}M",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          //slider
          RangeSlider(
           // values: _currentRangeValues,
            min: 1,
            max: 300,
             //divisions: 5,
            values: values,
            labels: labels,
            activeColor: primaryColor,
            inactiveColor: Colors.black12,
            // labels: RangeLabels(
            //   _currentRangeValues.start.round().toString(),
            //   _currentRangeValues.end.round().toString(),
            // ),
            onChanged: (value) {
              print("START: ${value.start}, End: ${value.end}");
              setState(() {
              //  _currentRangeValues = values;
                minvalue= value.start.floor();
                maxvalue=value.end.floor();
                values =value;
                labels =RangeLabels("${value.start.toInt().toString()}\$", "${value.start.toInt().toString()}\$");
                print("--------------");
                print(labels);

              });
            },
          ),
          //builder
          //done btn
          Container(
              child: Column(
                children: [
                  Container(
                    height: 70,
                    color: primaryColor,
                    child:Padding(
                      padding: const EdgeInsets.only(top:0.0,bottom: 0.0,left: 15.0,right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("RESET",style: TextStyle(color: white_Color),),
                          ElevatedButton(
                            child: Text('DONE',style: TextStyle(color: primaryColor),),
                            style: ElevatedButton.styleFrom(
                              primary: white_Color,
                            ),
                            onPressed: () {
                              print('Pressed');
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  //cars price list

                ],
              )
          ),
          Container(
            //height: sizeheight(context)*0.57,
            padding: EdgeInsets.only(bottom: 10),
            child:ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount:imgListpost.length ,
              itemBuilder: (context,index){
                return  Container(
                  //margin: EdgeInsets.only(top: 8),
                    child: UserPostes(context,imgListpost[index],favouriteicon,primaryColor));
              },
            ),
          ),
        ],
      ),
    );

  }
  /*----------------------------------CarListing--------------------------------------- */
  Widget CarListing(){
    return  SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            //For sale
            Container(
              decoration: BoxDecoration(
                //color: Colors.white,
                // border: Border.all(color: Colors.blueAccent),
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Row(
                children: [
                  Checkbox(
                    focusColor: primaryColor,
                    activeColor: primaryColor,
                    value: _checkboxForSale,
                    onChanged: (value) {
                      setState(() {
                        _checkboxForSale? _checkboxForSale = false: _checkboxForSale = true;
                      });
                    },
                  ),
                  Text("For Sale"),
                ],
              ),
            ),
            //For buy
            Container(
              child: Row(
                children: [
                  Checkbox(
                    focusColor: primaryColor,
                    activeColor: primaryColor,
                    value: _checkboxForBuy,
                    onChanged: (value) {
                      setState(() {
                        _checkboxForBuy? _checkboxForBuy = false: _checkboxForBuy = true;
                      });
                    },
                  ),
                  Text("For Buy"),
                ],
              ),
            ),
            SizedBox(height: 3.0,),
            //For Rent
            Container(
              decoration: BoxDecoration(
                //color: Colors.white,
                // border: Border.all(color: Colors.blueAccent),
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Row(
                children: [
                  Checkbox(
                    focusColor: primaryColor,
                    activeColor: primaryColor,
                    value: _checkboxForRent,
                    onChanged: (value) {
                      setState(() {
                        _checkboxForRent? _checkboxForRent = false: _checkboxForRent = true;
                      });
                    },
                  ),
                  Text("For Rent"),
                ],
              ),
            ),
            //done btn
           Container(
              height: 70,
              color: primaryColor,
              child:Padding(
                padding: const EdgeInsets.only(top:0.0,bottom: 0.0,left: 15.0,right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("RESET",style: TextStyle(color: white_Color),),
                    ElevatedButton(
                      child: Text('DONE',style: TextStyle(color: primaryColor),),
                      style: ElevatedButton.styleFrom(
                        primary: white_Color,
                      ),
                      onPressed: () {
                        print('Pressed');
                      },
                    )
                  ],
                ),
              ),
            ),
            Container(
              //height: sizeheight(context)*0.57,
              padding: EdgeInsets.only(bottom: 10),
              child:
              // Expanded(child:
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount:imgListpost.length ,
                itemBuilder: (context,index){
                  return  Container(
                    //margin: EdgeInsets.only(top: 8),
                      child: UserPostes(context,imgListpost[index],favouriteicon,primaryColor));
                },
              ),
              //),
            ),
          ],
        ),
      ),
    );
  }
  /*----------------------------------BrandCaterogy--------------------------------------- */
  Widget brandCategory() {
    return SingleChildScrollView(
      child: Container(
            margin: EdgeInsets.only(left: 5,right:5),
            //color: Colors.yellow,
           // height: sizeheight(context)*0.5,
            child: Column(
            children: [
         SizedBox(height: 10,),
              //Row1
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                       // color: Colors.red,
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                        '$imgpath/brandcategory/Motors-logo.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    //  child: Text("image 1"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                       // color: Colors.orange,
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/KIA_motors.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //child: Text("image 2"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                       // color: Colors.green,
                       // borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/Hyundai-logo1.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    //  child: Text("image 3"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                       // color: Colors.pink,
                       // borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/daewoo.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                     // child: Text("image 4"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        //color: Colors.blue,
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/fpv.png'

                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                     // child: Text("image 5"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              //Row2
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.red,
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/Horse.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //  child: Text("image 1"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.orange,
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/Acture.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //child: Text("image 2"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.green,
                        // borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/toyota.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //  child: Text("image 3"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.pink,
                        // borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/Suzuki.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      // child: Text("image 4"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        //color: Colors.blue,
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/Nissan.png'

                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      // child: Text("image 5"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              //Row3
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.red,
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/Mitsubishi.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //  child: Text("image 1"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.orange,
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/Manufacturer_MAZDA.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //child: Text("image 2"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.green,
                        // borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/LEXUS.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //  child: Text("image 3"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.pink,
                        // borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/Infiniti-logo.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      // child: Text("image 4"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        //color: Colors.blue,
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/Geely-logo.png'

                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      // child: Text("image 5"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              //Row4
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.red,
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/Roewe-.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //  child: Text("image 1"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.orange,
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/Jac-motors.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //child: Text("image 2"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.green,
                        // borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/circle.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //  child: Text("image 3"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.pink,
                        // borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/Hafei-logo.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      // child: Text("image 4"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        //color: Colors.blue,
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/peugeot.png'

                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      // child: Text("image 5"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              //Row5
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.red,
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/Lancia-Log.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //  child: Text("image 1"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.orange,
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/venturi.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //child: Text("image 2"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.green,
                        // borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/purepng.com-.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //  child: Text("image 3"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.pink,
                        // borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/Citroen.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      // child: Text("image 4"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        //color: Colors.blue,
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/bugatti-logo.png'

                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      // child: Text("image 5"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              //Row6
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.red,
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/bmw.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //  child: Text("image 1"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.orange,
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/buick-logo.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //child: Text("image 2"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.green,
                        // borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/jaguar.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //  child: Text("image 3"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        // color: Colors.pink,
                        // borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/Cadillac.png'
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      // child: Text("image 4"),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: new BoxDecoration(
                        //color: Colors.blue,
                        //borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              '$imgpath/brandcategory/chevrolet.png'

                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      // child: Text("image 5"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              //List
              Container(
               // height: sizeheight(context)*0.57,
                padding: EdgeInsets.only(bottom: 10),
                child:ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:imgListpost.length ,
                  itemBuilder: (context,index){
                    return  Container(
                      //margin: EdgeInsets.only(top: 8),
                        child: UserPostes(context,imgListpost[index],favouriteicon,primaryColor));
                  },
                ),
              ),
            ],
          ),),
    );

  }
}
