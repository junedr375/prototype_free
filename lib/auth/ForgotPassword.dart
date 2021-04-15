import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:marquina/Home/HomePage.dart';
import 'package:marquina/Utils/Utility.dart';
import 'package:marquina/Widgets/commonAppBar.dart';
import 'package:marquina/auth/FaceConfirmPage.dart';
import 'package:marquina/auth/FaceRecognisation.dart';
import 'package:marquina/auth/ForgotPassword.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:marquina/auth/ResetPasswordConfirm.dart';
import 'package:marquina/auth/SignUp.dart';
import 'package:http/http.dart' as http;

class ForgotPassword extends StatefulWidget {
  @override
  ForgotPasswordState createState() => ForgotPasswordState();
}

class ForgotPasswordState extends State<ForgotPassword> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();

  bool isCredCorrect = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    double mainAxisHeight = height > width ? height : width;

    return SafeArea(
        child: Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        height: mainAxisHeight,
        width: width,
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              commonAppBar(),
              SizedBox(height: mainAxisHeight * 0.10),
              Container(
                  child: Center(
                child: Text('Password Reset',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue[400])),
              )),
              SizedBox(height: 20),
              Container(
                  child: Center(
                child: Text(
                    'To genrate new password.\nprovide your official Email id.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue[300])),
              )),
              SizedBox(height: mainAxisHeight * 0.04),
              SizedBox(height: 50),
              Container(
                height: 50,
                width: width,
                //    padding: EdgeInsets.only(left: 20),
                child: TextFormField(
                  controller: usernameController,
                  cursorColor: componentColor,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: componentColor,
                        size: 25,
                      ),
                      fillColor: componentColor,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: componentColor),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: componentColor),
                      ),
                      hintText: 'Email ID',
                      hintStyle:
                          TextStyle(fontSize: 20, color: componentColor)),
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 22),
                ),
              ),
              SizedBox(height: 90),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => ResetPasswordConfirm())));
                },
                child: Container(
                  child: Container(
                      height: 40,
                      width: 40,
                      // margin: EdgeInsets.symmetric(horizontal: 80),
                      alignment: Alignment.center,
                      // decoration: BoxDecoration(
                      //     color: componentColor,
                      //     boxShadow: [
                      //       BoxShadow(
                      //           offset: Offset(2, 5),
                      //           color: Colors.grey[400],
                      //           blurRadius: 10)
                      //     ]),
                      child: Image.asset('assets/pngs/nextArrow.png')),
                ),
              ),
              SizedBox(height: 90),
            ],
          ),
        ),
      ),
    ));
  }
}
