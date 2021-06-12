import 'package:autoreact/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SiginUpPage extends StatefulWidget {
  @override
  _SiginUpPageState createState() => _SiginUpPageState();
}

class _SiginUpPageState extends State<SiginUpPage> {
  bool _checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text("CREATE YOUR ACCOUNT"),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: sizeheight(context),
            decoration:  BoxDecoration(
              image:DecorationImage(image:AssetImage('$imgpath/carbackground.png'), fit: BoxFit.cover,),),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: sizeheight(context)*0.1,),
//Name
                Container(
                  width: sizeWidth(context),
                  margin: EdgeInsets.only(
                      left: sizeWidth(context) * 0.08,
                      right: sizeWidth(context) * 0.08),
                  child: TextField(
                    //controller: Controller_sales,
                    decoration: InputDecoration(
                      hintText: "First Name",
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    onChanged: (value) => () {},
                  ),
                ),
                //last Name
                Container(
                  width: sizeWidth(context),
                  margin: EdgeInsets.only(
                      top: 20,
                      left: sizeWidth(context) * 0.08,
                      right: sizeWidth(context) * 0.08),
                  child: TextField(
                    //controller: Controller_sales,
                    decoration: InputDecoration(
                      hintText: "Last Name",
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    onChanged: (value) => () {},
                  ),
                ),
                Container(
                  width: sizeWidth(context),
                  margin: EdgeInsets.only(
                      top: 20,
                      left: sizeWidth(context) * 0.08,
                      right: sizeWidth(context) * 0.08),
                  child: TextField(
                    //controller: Controller_sales,
                    decoration: InputDecoration(
                      hintText: "Email Address",
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
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
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    onChanged: (value) => () {},
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //check box your password
                Container(
                  margin: EdgeInsets.only(
                    left: sizeWidth(context) * 0.05,
                    right: sizeWidth(context) * 0.03,
                  ),
                  child: Row(
                    children: [
                      Checkbox(
                        focusColor: primaryColor,
                        activeColor: primaryColor,
                        value: _checkbox,
                        onChanged: (value) {
                          setState(() {
                            _checkbox = true;
                          });
                        },
                      ),
                      Container(
                        width: sizeWidth(context) * 0.7,
                        child: RichText(
                          text: TextSpan(
                              text: 'I have read and agree to the Drive Go',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' Terms of Services',
                                    style: TextStyle(
                                      color: primaryColor,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // Get.to(HomePage());
                                        print("SignIntped");
                                      }),
                                TextSpan(
                                    text: ' and ',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // Get.to(HomePage());
                                        print("SignIntped");
                                      }),
                                TextSpan(
                                    text: 'Privacy Policy',
                                    style: TextStyle(color: primaryColor),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // Get.to(HomePage());
                                        print("SignIntped");
                                      })
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //Login Buttons
                Container(
                    width: sizeWidth(context),
                    margin: EdgeInsets.only(
                        left: sizeWidth(context) * 0.08,
                        right: sizeWidth(context) * 0.08),
                    height: 45,
                    child: ElevatedButton(
                      child: Text("SIGN UP"),
                      onPressed: () {
                        // Get.to(HomePage());
                      },
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                //dont have any account
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: EdgeInsets.only(bottom: 50),
                      //padding: EdgeInsets.all(10),
                      child: RichText(
                        text: TextSpan(
                            text: 'Already Have an Account?',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Sign In',
                                  style: TextStyle(
                                      color: primaryColor, fontSize: 18),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // Get.to(HomePage());
                                      print("SignIntped");
                                    })
                            ]),
                      )),
                ),
              ],
            ),
          ),
          // child:
        ),
      ),
    );
  }
}
