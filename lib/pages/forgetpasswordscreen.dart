import 'package:autoreact/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text("FORGOT PASSWORD"),
        ),
        body: Stack(
          children: [
          SingleChildScrollView(
            child: Container(
              height: sizeheight(context),
              decoration:  BoxDecoration(
                image:DecorationImage(image:AssetImage('$imgpath/carbackground.png'), fit: BoxFit.cover,),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                SizedBox(height: sizeheight(context)*0.2,),
                  // Align(
                  //     alignment: Alignment.topLeft,
                  //     child: IconButton(icon: Icon(Icons.arrow_back,color: primaryColor,), onPressed: (){Get.back();})),
                 // Expanded(child: SizedBox(height: 10,)),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left:  sizeWidth(context) * 0.08,
                          right:  sizeWidth(context) * 0.08),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Forgot Password",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Please Enter Your Email Address and",
                            style: TextStyle(
                                color:text_Color,
                                // fontSize: 18,
                                ),
                          ),
                          Text(
                            "Reset Your passowrd",
                            style: TextStyle(
                                color: text_Color,
                                // fontSize: 18,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: sizeWidth(context),
                    margin: EdgeInsets.only(
                        top: 40,
                        left: sizeWidth(context) * 0.08,
                        right:  sizeWidth(context) * 0.08),

                    child: TextField(
                      //controller: Controller_sales,

                      decoration: InputDecoration(hintText: "Email Address",
                        border: OutlineInputBorder(),
                        hintStyle:TextStyle(color: Colors.grey),),
                      onChanged: (value) => () {},
                    ),
                  ),
                  //pw
                  SizedBox(height: 40,),
                  //Login Buttons
                  Container(
                      width:  sizeWidth(context),
                      margin: EdgeInsets.only(
                          left: sizeWidth(context) * 0.08,
                          right:  sizeWidth(context) * 0.08),
                      height: 50,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      // ),
                      child: ElevatedButton(
                        child: Text("SEND NOW"),
                        onPressed: () {
                          //Get.to(HomePage());
                        },
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                          textStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                        ),
                      )),
                  //Forget your password
                  InkWell(
                    onTap: (){
                      print("Tabed Forget password");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                        child: Text(
                          "CANCEL",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  //Expanded(child: SizedBox(height: 10,)),
                  //dont have any account
                ],
              ),
            ),
          ),
    ],
        ),
      ),

    );
  }
}
