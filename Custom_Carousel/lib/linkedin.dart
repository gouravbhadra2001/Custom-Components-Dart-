import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class linkedin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LinkedIn", textAlign: TextAlign.center,
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

        leading: Icon(Icons.person_pin_outlined, color: Colors.white, shadows: [Shadow(
          offset: Offset(2.5, -2.5), //position of shadow
          blurRadius: 1.0, //blur intensity of shadow
          color: Colors.blue.withOpacity(
              0.9), //color of shadow with opacity
        ),
        ],),),
      body: ListView(
        children: [SizedBox(height: 20.0,),Text("LinkedIn is a social networking website designed for business professionals. It allows you to share work-related information with other users and keep an online list of professional contacts.Like Facebook and MySpace, LinkedIn allows you to create a custom profile. However, profiles created within LinkedIn are business-oriented rather than personal. For example, a LinkedIn profile highlights education and past work experience, which makes it appear similar to a resume. Profiles also list your connections to other LinkedIn users, as well as recommendations you make or receive from other users.By using LinkedIn, you can keep in touch with past and current colleagues, which can be useful in today's ever-changing work environment. You can also connect with new people when looking for potential business partners. While people outside your personal network cannot view your full profile, they can still view a snapshot of your education and work experience. They can also contact you using LinkedIn's anonymous \"InMail\" messaging service, which could lead to new job opportunities.LinkedIn has several benefits for business professionals, which is why it is used by millions of people across the world. Just remember, if you decide to create a LinkedIn profile, keep your information professional. It's best to save your personal information for the other social networking websites.")],
      ),
    );
  }

}