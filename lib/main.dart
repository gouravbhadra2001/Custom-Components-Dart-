import 'package:carousel/instagram.dart';
import 'package:carousel/twitter.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'facebook.dart';
import 'linkedin.dart';
void main(){
SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Custom_Carousel",
      theme: ThemeData(
        primarySwatch: Colors.cyan

      ),
      themeMode: ThemeMode.system,
      home: Carousel_Slider ()
    );
  }

}

class Carousel_Slider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Media", textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, shadows: [Shadow(
            offset: Offset(1, 1), //position of shadow
            blurRadius: 2.0, //blur intensity of shadow
            color: Colors.black87.withOpacity(
                0.5), //color of shadow with opacity
          ),
          ], fontWeight: FontWeight.bold),),
        bottomOpacity: 0.2,
        scrolledUnderElevation: 40.0,
        elevation: 15,
        shape: StadiumBorder(side: BorderSide.none),
        backgroundColor: Colors.blueAccent,
        shadowColor: Colors.yellowAccent,

        leading: Icon(Icons.person, color: Colors.white, shadows: [Shadow(
          offset: Offset(2.5, -2.5), //position of shadow
          blurRadius: 1.0, //blur intensity of shadow
          color: Colors.blue.withOpacity(
              0.9), //color of shadow with opacity
        ),
        ],),),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              tileMode: TileMode.mirror,
              colors:
              [
                Colors.yellowAccent,
                Colors.white,
                Colors.white,
                Colors.lightGreenAccent,
                Colors.amberAccent,
              ])),
        child: ListView(
          children: [
            SizedBox(height: 20,),
            CarouselSlider(
              items: [
                GestureDetector(
                    onTap: ()async{
                      await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>facebook()));
                    },
                    child:Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 15.0,
                                    spreadRadius: 5.0,
                                    offset: Offset(
                                      5.0,
                                      5.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(50.0),
                                image: DecorationImage(
                                    image: AssetImage("lib/assets/images/facebook.jpg"),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 0,
                            right: 0,

                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 15.0,
                                      spreadRadius: 5.0,
                                      offset: Offset(
                                        5.0,
                                        5.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(50.0),
                                    bottomRight: Radius.circular(40.0),
                                  ),
                                  color: Colors.black45
                              ),
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "Facebook",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ]
                    )
                )



                ,
                GestureDetector(
                    onTap: ()async{
                      await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>instagram()));
                    },
                    child:Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 15.0,
                                    spreadRadius: 5.0,
                                    offset: Offset(
                                      5.0,
                                      5.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(50.0),
                                image: DecorationImage(
                                    image: AssetImage("lib/assets/images/insta.jpg"),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            right: 10,

                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(50.0),
                                    bottomRight: Radius.circular(40.0),
                                  ),
                                  color: Colors.black45
                              ),
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "Instagram",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ]
                    )
                ),
                GestureDetector(
                    onTap: ()async{
                      await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>linkedin()));
                    },
                    child:Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 15.0,
                                    spreadRadius: 5.0,
                                    offset: Offset(
                                      5.0,
                                      5.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(50.0),
                                image: DecorationImage(
                                    image: AssetImage("lib/assets/images/linkedin.jpg"),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 0,
                            right: 0,

                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(50.0),
                                    bottomRight: Radius.circular(40.0),
                                  ),
                                  color: Colors.black45
                              ),
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "LinkedIn",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ]
                    )
                ),
                GestureDetector(
                    onTap: ()async{
                      await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>twitter()));
                    },
                    child:Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 15.0,
                                    spreadRadius: 5.0,
                                    offset: Offset(
                                      5.0,
                                      5.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(50.0),
                                image: DecorationImage(
                                    image: AssetImage("lib/assets/images/twitter.jpg"),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 0,
                            right: 0,

                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(50.0),
                                    bottomRight: Radius.circular(40.0),
                                  ),
                                  color: Colors.black45
                              ),
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "Twitter",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ]
                    )
                )
              ],
              options: CarouselOptions(
                height: 400.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 9/16,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 1000),
                viewportFraction: 0.9,
              ),)],
        ),
      )
    );
  }
}