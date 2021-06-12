import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log In Screen',
      debugShowCheckedModeBanner: false,
      home: logInScreen(),
    );
  }
}

class logInScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(229, 178, 202, 1),
          Color.fromRGBO(205, 130, 222, 1),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // margin: EdgeInsets.fromLTRB(50, 40, 45, 0),
                margin: EdgeInsets.only(left: 60, right: 55, top: 40),
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/person_&_dog.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              Center(
                child: Text(
                  'Please, Log In.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 33,
                      // fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.all(30.0),
              // )
              Container(
                margin: EdgeInsets.fromLTRB(35, 25, 35, 5),
                padding: EdgeInsets.all(22),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.perm_identity,
                      color: Colors.grey.shade700,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'fireshadow@gmail.com',
                      style: TextStyle(
                          color: Colors.grey.shade700, letterSpacing: .8),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(35, 10, 35, 5),
                padding: EdgeInsets.all(22),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.vpn_key,
                      color: Colors.grey.shade700,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '****************',
                      style: TextStyle(
                          color: Colors.grey.shade700, letterSpacing: .8),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(35, 10, 35, 5),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        //color: Colors.black12,
                        color: Color.fromRGBO(87, 52, 91, 0.3),
                        blurRadius: 60,
                        spreadRadius: 0,
                        offset: Offset(0, 20))
                  ],
                  borderRadius: BorderRadius.circular(40),
                  color: Color.fromRGBO(120, 37, 139, 1),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 85.3,
                    ),
                    Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        letterSpacing: .8,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(35, 25, 35, 0),
                color: Colors.transparent,
                child: Row(
                  children: [
                    Text(
                      '   ------------------ ',
                      style: TextStyle(
                          color: Colors.white, fontSize: 7, letterSpacing: 3.5),
                    ),
                    Text(
                      'Or',
                      style: TextStyle(
                          color: Colors.white, fontSize: 15, letterSpacing: 1),
                    ),
                    Text(
                      ' ------------------',
                      style: TextStyle(
                          color: Colors.white, fontSize: 7, letterSpacing: 3.5),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(35, 25, 35, 44),
                  padding: EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          //color: Colors.black12,
                          color: Color.fromRGBO(87, 52, 91, 0.3),
                          blurRadius: 60,
                          spreadRadius: 0,
                          offset: Offset(0, 20))
                    ],
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white.withOpacity(0.28),
                  ),
                  child: Center(
                    child: Text(
                      'Create an Account',
                      style: TextStyle(
                          fontSize: 16, color: Colors.white, letterSpacing: .4),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
