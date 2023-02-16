import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class instagram extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Instagram", textAlign: TextAlign.center,
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

        leading: Icon(Icons.person_pin_rounded, color: Colors.white, shadows: [Shadow(
          offset: Offset(2.5, -2.5), //position of shadow
          blurRadius: 1.0, //blur intensity of shadow
          color: Colors.blue.withOpacity(
              0.9), //color of shadow with opacity
        ),
        ],),),
      body: ListView(
        children: [SizedBox(height: 20.0,),Text("Instagram is a free, online photo-sharing application and social network platform that was acquired by Facebook in 2012.Instagram allows users to edit and upload photos and short videos through a mobile app. Users can add a caption to each of their posts and use hashtags and location-based geotags to index these posts and make them searchable by other users within the app. Each post by a user appears on their followers' Instagram feeds and can also be viewed by the public when tagged using hashtags or geotags. Users also have the option of making their profile private so that only their followers can view their posts.As with other social networking platforms, Instagram users can like, comment on and bookmark others' posts, as well as send private messages to their friends via the Instagram Direct feature. Photos can be shared on one or several other social media sites -- including Twitter, Facebook and Tumblr -- with a single click.Instagram is not only a tool for individuals, but also for businesses. The photo-sharing app offers companies the opportunity to start a free business account to promote their brand and products. Companies with business accounts have access to free engagement and impression metrics. According to Instagram's website, more than 1 million advertisers worldwide use Instagram to share their stories and drive business results. Additionally, 60% of people say they discover new products through the app.")],
      ),
    );
  }

}