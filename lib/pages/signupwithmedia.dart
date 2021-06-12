

import 'package:autoreact/pages/signinscreen.dart';
import 'package:autoreact/utils/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:autoreact/config/route.dart';

class SignUpWithMedia extends StatefulWidget {
  @override
  _SignUpWithMediaState createState() => _SignUpWithMediaState();
}

class _SignUpWithMediaState extends State<SignUpWithMedia> {
  @override
  Widget build(BuildContext context) {
    final double btnmargsize= MediaQuery.of(context).size.width*0.09;
    return Scaffold(
        backgroundColor: Colors.black,
        body:
        Stack(
          children: [
            Container(
              decoration:  BoxDecoration(
                image:DecorationImage(image:AssetImage('$imgpath/signupsocialmedia.png'), fit: BoxFit.cover,),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: SizedBox()),
    Container(
      height: 150,
    width: sizeWidth(context),
    decoration:BoxDecoration(
           image:DecorationImage(image:AssetImage('$imgpath/LogoWhite.png'), ),),
               ),
                  Expanded(child: SizedBox()),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sign Up With Social Media",
                        style: TextStyle(color: Colors.white,fontSize: 16),),
                      SizedBox(height: 20.0,),
                      //Email Button
                      InkWell(
                        //onTap: ()=>Get.to(LoginPg()),
                        child: Container(
                          margin: EdgeInsets.only(left: btnmargsize,right:btnmargsize ),
                          padding: EdgeInsets.all(10),

                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.all(
                                Radius.circular(10.0)),
                          ),
                          child: Container(
                            child: Row(
                              children: [
                                SizedBox(width: 5.0,),
                                Container(child: Icon(Icons.email,size: 18,color: Colors.white,),),
                                SizedBox(width: 15.0,),

                                Container(height:25,width: 0.5,color: Colors.white,),

                                SizedBox(width: 15.0,),
                                Container(child: Text("SIGN UP WITH EMAIL",style: TextStyle(color: Colors.white),),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      //facebook
                      Container(

                        margin: EdgeInsets.only(left: btnmargsize,right:btnmargsize ),
                        padding: EdgeInsets.all(10),

                        decoration: BoxDecoration(
                          color: fb_btnColor,
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
                              Container(child: Text("CONTINUE WITH FACEBOOK ",style: TextStyle(color: Colors.white),),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      //google btn
                      Container(
                        margin: EdgeInsets.only(left: btnmargsize,right:btnmargsize ),
                        padding: EdgeInsets.all(10),

                        decoration: BoxDecoration(
                          color: Color(0xffeb0c38),
                          borderRadius: BorderRadius.all(
                              Radius.circular(10.0)),
                        ),
                        child: Container(

                          child: Row(
                            children: [
                              SizedBox(width: 5.0,),
                              Container(child: Image.asset('$imgpath/glogo.png',height: 15,width: 20,),),
                              SizedBox(width: 15.0,),
                              Container(height:25,width: 0.5,color: Colors.white,),

                              SizedBox(width: 15.0,),
                              Container(child: Text("CONTINUE WITH GOOGLE",style: TextStyle(color: Colors.white),),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      //Text("Already Your Account? SignIn",
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                  text: 'Already Your Account?',
                                  style: TextStyle(
                                      color: Colors.white,fontSize: 14 ),
                                  children: <TextSpan>[
                                    TextSpan(text: ' SignIn',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                           // Get.to(LoginPg());
                                            Navigator.pushNamed(context, 'LoginPg');
                                            print("SignIntped");
                                          }
                                    )
                                  ]
                              ),
                            ),
                          )
                      ),
                      //Expanded(child: SizedBox()),
                    ],
                  ),
                  SizedBox(height: 120,),
                ],
              ),
            ),
          ],
        )
    );
  }
}
Widget Signinbtn(){
  return Container(
    margin: EdgeInsets.all(40),
    padding: EdgeInsets.all(10),

    decoration: BoxDecoration(
      color: Color(0xff16b6c4),
      borderRadius: BorderRadius.all(
          Radius.circular(30.0)),
    ),
    child: Container(

      child: Row(
        children: [
          SizedBox(width: 5.0,),
          Container(child: Icon(Icons.email,color: Colors.white,),),
          // Container(width: 5.0,color: Colors.black,),

          SizedBox(width: 5.0,),
          Container(child: Text("SIGN UP WITH EMAIL",style: TextStyle(color: Colors.white),),),
        ],
      ),
    ),
  );

}