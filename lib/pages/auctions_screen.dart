
import 'package:autoreact/pages/homescreen.dart';
import 'package:autoreact/utils/constants.dart';
import 'package:autoreact/utils/widgets/auctionsreenpost.dart';
import 'package:autoreact/utils/widgets/customappbar.dart';
import 'package:autoreact/utils/widgets/postes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class AuctionsScreenpg extends StatefulWidget {
  @override
  _AuctionsScreenpgState createState() => _AuctionsScreenpgState();
}

class _AuctionsScreenpgState extends State<AuctionsScreenpg> {
  @override
  Widget build(BuildContext context) {
    //notbooktick
    return Scaffold(
      appBar: MycustomAppBar("AUCTION"),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [

          //searchbox
          Padding(
            padding: EdgeInsets.only(top:10.0,bottom: 5.0,left: 10.0,right: 10.0),
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
                      width: sizeWidth(context)*0.8,
                      padding: EdgeInsets.only(left:8.0),
                      height: 48,
                      child:TextField(
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
                      padding: const EdgeInsets.only(left:8.0),
                      child: Container(
                          height: sizeheight(context),
                          width:50,
                          color:primaryColor,
                          child: Center(child:Icon(Icons.search,color: Colors.white,),)),
                    ),

                    //institute names
                  ]
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: sizeheight(context),
              child: ListView.builder(
                itemCount:imgListpost.length ,
                itemBuilder: (context,index){
                  return  Container(
                      margin: EdgeInsets.only(top: 8),
                      child: AuctionPost(context,imgListpost[index]));
                      //child: UserPostes(context,imgListpost[index],favouriteicon,primaryColor));
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {},
        child:  SvgPicture.asset("$imgpath/pen.svg",color: Colors.white,height: 30,width: 30,),
      ),
    );
  }
}
