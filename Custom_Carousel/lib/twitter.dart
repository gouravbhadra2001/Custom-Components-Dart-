import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class twitter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Twitter", textAlign: TextAlign.center,
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

        leading: Icon(Icons.person_pin_circle_outlined, color: Colors.white, shadows: [Shadow(
          offset: Offset(2.5, -2.5), //position of shadow
          blurRadius: 1.0, //blur intensity of shadow
          color: Colors.blue.withOpacity(
              0.9), //color of shadow with opacity
        ),
        ],),),
      body:
      ListView(
        children: [SizedBox(height: 20.0,),Text("Twitter was designed by Jack Dorsey in March 2006. The full version of this service was publicly introduced in July of the same year. Twitter was developed as a result of a day-long brainstorming session conducted by board members of the podcasting company Odeo. Dorsey came up with an idea of using an SMS service to share information within a small group. The initial project code name for this service was twttr. The first Twitter prototype was used as an internal message service by Odeo employees.As of 2011, Twitter has 200 million users who generate 350 million tweets a day. Twitter is reputed to handle more than 1.6 billion search queries per day.The Web interface for Twitter is implemented by means of the Ruby on Rails framework. Previously, the messages were handled by a Ruby-persistent queue server known as Starling, which has now been replaced with software written in Scala. Other applications and Web services can be integrated with Twitter using its application programming interface (API).Twitter also enables users to view other media content by simply clicking tweets that include links to videos and images from various websites. On June 1, 2011, Twitter introduced a built-in photo-sharing service that allows users to upload an image and attach it to a tweet directly from Twitter.com.Twitter has been used as a platform for a wide variety of purposes in many scenarios by different industries. It is used as the means for direct communication among social groups and organizations, especially with the use of hashtags, which enable a tweet to be viewed by all users who follow a given topic that starts with the hash (#) symbol.")],
      ),
    );
  }

}