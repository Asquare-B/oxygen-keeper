import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:o2app/loginpage.dart';
import 'package:o2app/signup.dart';
import 'dart:ui';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ),
  );
}

class Homepage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "O2 Keeper",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Gives Details of Oxygen Keeps Near YOU",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      )
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height/3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assest/welcom.jpg")
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: double.infinity,
                        height: 60,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox( 
                      height: 20,
                    ),
                    MaterialButton(
                      minWidth: double.infinity,
                        height: 60,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                        },
                      color: Colors.blue[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),

                    ),
                    
                  ],
                )
              ],
            ),
          ),
      ),
    );
  }
}

