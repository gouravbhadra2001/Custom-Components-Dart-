import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class facebook extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(
       title: Text("About Facebook", textAlign: TextAlign.center,
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

       leading: Icon(Icons.facebook, color: Colors.white, shadows: [Shadow(
         offset: Offset(2.5, -2.5), //position of shadow
         blurRadius: 1.0, //blur intensity of shadow
         color: Colors.blue.withOpacity(
             0.9), //color of shadow with opacity
       ),
       ],),),
     body: ListView(
       children: [
         SizedBox(height: 20,),Text("Below is the article summary. For the full article, see Facebook.Facebook, American company offering online social networking services. It was founded in 2004 by Mark Zuckerberg (the primary developer), Eduardo Saverin, Dustin Moskovitz, and Chris Hughes, all of whom were attending Harvard University. Membership was initially limited to Harvard students but by 2006 had expanded to anyone over age 13. Users on the site can create profiles and upload photos, and they can signal their approval of content with the Like button. Facebook has many components, including News Feed, which informs users of changes to their friends’ profiles and status. Access to Facebook is free of charge—the company earns most of its money from advertisements—and privacy is an ongoing concern. Facebook became the largest social network in the world, with 845 million users by the end of 2011. The following year, Facebook’s initial public offering (IPO) raised \$16 billion ")],
     ),
   );
  }
  
}