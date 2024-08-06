import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/navPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static String name = "name";
  static String password = "password";
  SharedPreferences? prefs;
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding:  EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 150,),
              Image.asset("assets/images/n_logo.png",height: 150,width: 150,),
              /*---------TextField 1------------*/
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: nameController,
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: "Username",
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Colors.red,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(width: 2,color: Color.fromARGB(255, 229,9,19))
                      ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(width: 2)
                    )
                  ),
                ),
              ),
              /*---------TextField 2------------*/
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: passController,
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: "Password",
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Colors.red,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(width: 2,color: Color.fromARGB(255, 229,9,19))
                      ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(width: 2)
                    )
                  ),
                ),
              ),
              /*---------Container------------*/
              InkWell(
                onTap: ()async{
                  prefs =await SharedPreferences.getInstance();
                  prefs!.setString("$name", nameController.text.toString());
                  prefs!.setString("$password", passController.text.toString());
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return HomePage();
                  }));
                },
                child: Padding(
                  padding:  EdgeInsets.all(15),
                  child: Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 229,9,19),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}