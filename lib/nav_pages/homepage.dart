import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_clone/games_page.dart';

class HomePage_1 extends StatefulWidget{

  @override
  State<HomePage_1> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage_1> {
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
      body: Padding(
        padding:  EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 39,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        border: Border.all(color: Colors.white70,width: 2)
                    ),
                    child: Center(child: Text("TV Shows",style: TextStyle(color: Colors.white70,fontSize: 15),)),
                  ),
                  Container(
                    height: 39,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        border: Border.all(color: Colors.white70,width: 2)
                    ),
                    child: Center(child: Text("Movies",style: TextStyle(color: Colors.white70,fontSize: 15),)),
                  ),
                  Container(
                    height: 39,
                    width:120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        border: Border.all(color: Colors.white70,width: 2)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 6,),
                        Text("Categories",style: TextStyle(color: Colors.white70,fontSize: 15),),
                        Icon(Icons.arrow_drop_down_sharp,size: 30,color: Colors.white70,)
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 14,vertical: 20),
                child: Stack(
                  children: [
                    Container(
                      height: 490,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage("assets/images/movie_poster/img_20.png",),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 135,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.play_arrow,color: Colors.black,size: 30,),
                                Text("Play",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 40,
                            width: 135,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.withOpacity(0.3),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add,color: Colors.white,size: 30,),
                                Text("My List",style: TextStyle(color: Colors.white),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Text("Today's Top Picks for You",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),textAlign: TextAlign.left,),
              SizedBox(
                height: 180,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: mList.length,
                    itemBuilder: (_,Index){
                      return Padding(
                        padding:  EdgeInsets.only(top: 8,left: 0,right: 7,bottom: 8),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              image: DecorationImage(
                                image: mList[Index],
                                fit: BoxFit.cover,
                              )
                          ),
                        ),
                      );
                    }),
              ),
              Text("Continue watching for Prerna",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),textAlign: TextAlign.left,),
              SizedBox(
                height: 180,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: mList2.length,
                    itemBuilder: (_,Index){
                      return Padding(
                        padding:  EdgeInsets.only(top: 8,left: 0,right: 7,bottom: 8),
                        child: Stack(
                          children: [
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  image: DecorationImage(
                                    image: mList2[Index],
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ),
                            Positioned(
                              top: 60,
                              left: 25,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.grey.withOpacity(0.3),
                                    border: Border.all(width: 2,color: Colors.white)
                                ),
                                child: Icon(Icons.play_arrow,color: Colors.white,size: 25,),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border(top: BorderSide(color: Colors.white,width: 3)),
                                    color: Colors.black
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.info_outline,color: Colors.white,),
                                    Icon(Icons.more_vert_sharp,color: Colors.white,)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}