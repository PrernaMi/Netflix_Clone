import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix_clone/navPage.dart';
import 'package:netflix_clone/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SharedPreferences? prefs;
  String? name;
  String? password;

  @override
  void initState() {
    moveNextPage();
    super.initState();
  }

  Widget nextPage = LoginPage();

  void moveNextPage()async{
    prefs = await SharedPreferences.getInstance();
    name = prefs!.getString("name");
    password = prefs!.getString("password");

    if(name != null && name != "" && password != null && password != ""){
      nextPage = HomePage();
      Timer(Duration(milliseconds: 400),(){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
          return nextPage;
        }));
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Image.asset("assets/images/netflix_logo.png")),
    );
  }
}