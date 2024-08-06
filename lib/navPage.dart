import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_clone/games_page.dart';
import 'package:netflix_clone/nav_pages/homepage.dart';

class HomePage extends StatefulWidget{

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<AssetImage>mList=[
    AssetImage("assets/images/movie_poster/img.png",),
    AssetImage("assets/images/movie_poster/img_1.png"),
    AssetImage("assets/images/movie_poster/img_2.png"),
    AssetImage("assets/images/movie_poster/img_3.png"),
    AssetImage("assets/images/movie_poster/img_4.png",),
  ];

  List<AssetImage>mList2=[
    AssetImage("assets/images/movie_poster/img_5.png",),
    AssetImage("assets/images/movie_poster/img_6.png"),
    AssetImage("assets/images/movie_poster/img_7.png"),
    AssetImage("assets/images/movie_poster/img_8.png"),
    AssetImage("assets/images/movie_poster/img_9.png",),
  ];

  List<Widget>navPage=[
    HomePage_1(),
    Games_page(),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,64, 68,67),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255,64, 68,67),
        titleSpacing: 0,
        title: Image.asset("assets/images/n_logo.png",height: 60,width: 60,),
        actions: [
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: Icon(Icons.download,size: 30,color: Colors.white,),
          ),
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: Icon(Icons.search,size: 30,color: Colors.white,),
          )
        ],
      ),
      body: navPage[selectedIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.black,
        indicatorColor: Colors.transparent,
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(Icons.home,color: Colors.white,size: 30,),
              icon: Icon(Icons.home_outlined,size: 30,),
              label: "Home",
          ),
          NavigationDestination(
              selectedIcon: Icon(Icons.play_lesson_rounded,color: Colors.white,size: 30,),
              icon: Icon(Icons.play_lesson_outlined,size: 30,),
              label: "Games"
          ),
          NavigationDestination(
              selectedIcon: Icon(Icons.play_circle,color: Colors.white,size: 30,),
              icon: Icon(Icons.play_circle_outline,size: 30,),
              label: "New & Hot",
          ),
          NavigationDestination(
              selectedIcon: Icon(Icons.account_circle,color: Colors.white,size: 30,),
              icon: Icon(Icons.account_circle_outlined,size: 30,),
              label: "My Netflix"
          ),
        ],
        selectedIndex: selectedIndex,
        onDestinationSelected: (value){
          selectedIndex = value;
          setState(() {

          });
        },
      ),
    );
  }
}