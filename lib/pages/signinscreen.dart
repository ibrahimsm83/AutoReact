import 'package:autoreact/pages/forgetpasswordscreen.dart';
import 'package:autoreact/pages/signupscreen.dart';
import 'package:autoreact/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homescreen.dart';

class LoginPg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double btnmargsize= MediaQuery.of(context).size.width*0.09;
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text("SIGN IN TO YOUR ACCOUNT"),
        ),
        body: Stack(
          children: [
         SingleChildScrollView(
            child: Container(
                height: sizeheight(context),
              decoration:  BoxDecoration(
                image:DecorationImage(image:AssetImage('$imgpath/carbackground.png'), fit: BoxFit.cover,),),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: sizeWidth(context),
                      margin: EdgeInsets.only(
                          top: 20,
                          left: sizeWidth(context) * 0.08,
                          right:  sizeWidth(context) * 0.08),

                      child: TextField(
                        //controller: Controller_sales,

                        decoration: InputDecoration(hintText: "Email Address",
                          border:OutlineInputBorder() ,
                          hintStyle:TextStyle(color: Colors.grey),),
                        onChanged: (value) => () {},
                      ),
                    ),
                    //pw
                    Container(
                      width: sizeWidth(context),
                      // height: 100,
                      margin: EdgeInsets.only(
                          top: 20,
                          left: sizeWidth(context) * 0.08,
                          right: sizeWidth(context) * 0.08),
                      child: TextField(
                        //controller: Controller_sales,
                        obscureText: true,
                        decoration: InputDecoration(hintText: "Password",
                          border:OutlineInputBorder() ,
                          hintStyle:TextStyle(color: Colors.grey),
                        ),
                        onChanged: (value) => () {},
                      ),
                    ),
                    SizedBox(height: 40,),
                    //Login Buttons
                    Container(
                        width:  sizeWidth(context),
                        margin: EdgeInsets.only(left: btnmargsize,right:btnmargsize ),

                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: ElevatedButton(
                          child: Text("LOGIN"),
                          onPressed: () {
                            //Get.to(HomePage());
                            Navigator.pushNamed(context, 'HomePage');
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
                        //Get.to(ForgetPassword());
                        Navigator.pushNamed(context,'ForgetPassword');
                        //ForgetPassword
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          child: Text(
                            "Forgot your password?",
                            style: TextStyle(
                                color: primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    //facebook btn
                    Container(
                      margin: EdgeInsets.only(
                          left: sizeWidth(context) * 0.16,
                          right: sizeWidth(context) * 0.16,
                      ),
                      padding: EdgeInsets.all(10),

                      decoration: BoxDecoration(

                        color:fb_btnColor,
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0)),
                      ),
                      child: Container(
                        child: Row(
                          children: [
                            SizedBox(width: 5.0,),
                            Container(child: Image.asset('$imgpath/fblgo.png',height: 15,width: 20,),),
                            SizedBox(width: 15.0,),
                            Container(height:25,width: 0.5,color: Colors.white,),
                            SizedBox(width: 15.0,),
                            Container(child: Text("Continue With Facebook ",style: TextStyle(color: Colors.white),),),
                          ],
                        ),
                      ),
                    ),
                    //facebnook btn end
                    SizedBox(height: 20,),
                    // Expanded(child: SizedBox(height: 5,)),
                    //dont have any account
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          margin: EdgeInsets.only(bottom: 50),

                          //padding: EdgeInsets.all(10),
                          child: RichText(
                            text: TextSpan(
                                text: 'New to Drive Go?',
                                style: TextStyle(
                                    color: Colors.black,fontSize: 14 ),
                                children: <TextSpan>[
                                  TextSpan(text: ' Sign Up',
                                      style: TextStyle(
                                          color: primaryColor, fontSize: 18),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          //Get.to(SiginUpPage());
                                          Navigator.pushNamed(context, 'SiginUpPage');
                                          print("SignIntped");
                                        }
                                  )
                                ]
                            ),
                          )
                      ),
                    ),
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
