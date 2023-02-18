

import "package:flutter/material.dart";
import "package:flutter/services.dart";
void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Colors.yellowAccent),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      title: "Custom App Drawer",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return MyHomePageState();
  }
}
class MyHomePageState extends State<MyHomePage> {
  bool _isHovering = false;


  void _setHovering(bool hovering) {
    setState(() {
      _isHovering = hovering;
    });
  }
  int _selectedIndex = -1;
  void _onTileTapped(int index) {
    setState(() {
      if (_selectedIndex == index) {
        _selectedIndex = -1; // Deselect tile
      } else {
        _selectedIndex = index; // Select new tile
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Color hoverColor = Colors.lightGreen.withOpacity(0.2);
    Color baseColor = Colors.black38.withOpacity(0.2);
    bool _hovering = false;

    return Scaffold(

      appBar:  AppBar(
      title: Text("Menu list in drawer->", textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, shadows: [Shadow(
        offset: Offset(2.5, -2.5), //position of shadow
        blurRadius: 2.0, //blur intensity of shadow
        color: Colors.black.withOpacity(
            0.5), //color of shadow with opacity
      ),
      ], fontWeight: FontWeight.bold),),
    bottomOpacity: 0.3,
    scrolledUnderElevation: 40.0,
    elevation: 5,
    shape: StadiumBorder(side: BorderSide.none),
    backgroundColor: Colors.indigo,
    shadowColor: Colors.indigo,
      ),
    endDrawer: Drawer(
        backgroundColor: Colors.transparent,
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width*0.08),),
        width: MediaQuery.of(context).size.width*0.89,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.black45,
              shape: StadiumBorder(side: BorderSide.none),
              title: Text("Menus and account"),
            ),
            body: ListView(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.5,
                  width: MediaQuery.of(context).size.width*0.5,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(20),
                    color: _isHovering ? hoverColor : baseColor,
                  ),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    onHover: (event){
                      _setHovering(true);
                    },
                    onExit: (event){
                      _setHovering(false);
                    },
                    child: GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.width*0.05,
                        width: MediaQuery.of(context).size.width*0.05,

                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(

                                image: AssetImage('lib/Assets/usericon.png',

                                )
                            )
                        ),
                      ),
                      onTap: (){},

                    ),)
                ),

                ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width*0.18)
                  ),
                  title: Text('Dashboard',textAlign: TextAlign.right, style: TextStyle(fontSize: 18 * MediaQuery.textScaleFactorOf(context),height: MediaQuery.of(context).size.height*0.003, color: Colors.white)),
                  trailing: Icon(Icons.dashboard_outlined, size: MediaQuery.of(context).size.width*0.03, color: Colors.white),
                  hoverColor: Colors.black38,
                  selectedTileColor: Colors.black38,
                  onTap: ()async {
    await Navigator.push(
    context, MaterialPageRoute(builder:
    (BuildContext context) => Dashboard()));
    },),


                ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width*0.18)
                  ),
                  title: Text('Chat with Expert',textAlign: TextAlign.right, style: TextStyle(fontSize: 18 * MediaQuery.textScaleFactorOf(context), height: MediaQuery.of(context).size.height*0.003,color: Colors.white)),
                  trailing: Icon(Icons.chat_outlined, size: MediaQuery.of(context).size.width*0.03, color: Colors.white),
                  hoverColor: Colors.black38,
                  selectedTileColor: Colors.black38,
                  onTap: (){}
                ),

                ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width*0.18)
                  ),
                  title: Text('Test Yourself',textAlign: TextAlign.right, style: TextStyle(fontSize: 18 * MediaQuery.textScaleFactorOf(context), height: MediaQuery.of(context).size.height*0.003,color: Colors.white)),
                  trailing: Icon(Icons.check_circle_outline_outlined, size: MediaQuery.of(context).size.width*0.03, color: Colors.white),
                  hoverColor: Colors.black38,
                  selectedTileColor: Colors.black38,
                  onTap: ()async {
                    await Navigator.push(
                        context, MaterialPageRoute(builder:
                        (BuildContext context) => Test()));
                  },
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width*0.18)
                  ),
                  title: Text('Progress-analysis',textAlign: TextAlign.right, style: TextStyle(fontSize: 18 * MediaQuery.textScaleFactorOf(context), height: MediaQuery.of(context).size.height*0.003,color: Colors.white)),
                  trailing: Icon(Icons.analytics_outlined, size: MediaQuery.of(context).size.width*0.03, color: Colors.white),
                  hoverColor: Colors.black38,
                  selectedTileColor: Colors.black38,
                  onTap: ()async {
                    await Navigator.push(
                        context, MaterialPageRoute(builder:
                        (BuildContext context) => Progress()));
                  },
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width*0.18)
                  ),
                  hoverColor: Colors.black38,
                  selectedColor: Colors.black38,
                  title: Text('About', textAlign: TextAlign.right, style: TextStyle(fontSize: 18 * MediaQuery.textScaleFactorOf(context),height: MediaQuery.of(context).size.height*0.003, color: Colors.white)),
                  trailing: Icon(Icons.info_outline_rounded, size: MediaQuery.of(context).size.width*0.03, color: Colors.white),

                  onTap: () {
                    setState(() {

                    });
                  },
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width*0.18)
                  ),
                  title: Text('Contact',textAlign: TextAlign.right, style: TextStyle(fontSize: 18 * MediaQuery.textScaleFactorOf(context), height: MediaQuery.of(context).size.height*0.003, color: Colors.white)),
                  trailing: Icon(Icons.contact_phone_outlined, size: MediaQuery.of(context).size.width*0.03, color: Colors.white),
                  hoverColor: Colors.black38,
                  selectedTileColor: Colors.black38,
                  onTap: ()async {
                    await Navigator.push(
                        context, MaterialPageRoute(builder:
                        (BuildContext context) => Contact()));
                  },
                ),

              ],
            ),
          )
        ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              tileMode: TileMode.decal,
              colors: [Colors.white,Colors.tealAccent, Colors.lightGreenAccent, Colors.yellowAccent,  Colors.orangeAccent]
          )
        ),
      ),
    );
  }
}

class Dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return DashboardState();
  }
}

class DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.dashboard_customize),
        actions: [
          SizedBox(width: MediaQuery.of(context).size.width * 0.3),
        ],
        title: Text(
          "Dashboard",
          style: TextStyle(
            color: Colors.white,
            shadows: [
              Shadow(
                offset: Offset(2.5, -2.5),
                blurRadius: 2.0,
                color: Colors.black.withOpacity(0.5),
              ),
            ],
            fontWeight: FontWeight.bold,
          ),
        ),
        titleSpacing: 0.0,
        bottomOpacity: 0.3,
        scrolledUnderElevation: 40.0,
        elevation: 5,
        shape: StadiumBorder(side: BorderSide.none),
        backgroundColor: Colors.indigo,
        shadowColor: Colors.indigo,
      ),
    );
  }
}



class Test extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
        leading: Icon(Icons.edit_note_rounded),
        title: Text("Have a test", textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, shadows: [Shadow(
            offset: Offset(2.5, -2.5), //position of shadow
            blurRadius: 2.0, //blur intensity of shadow
            color: Colors.black.withOpacity(
                0.5), //color of shadow with opacity
          ),
          ], fontWeight: FontWeight.bold),),
        bottomOpacity: 0.3,
        scrolledUnderElevation: 40.0,
        elevation: 5,
        shape: StadiumBorder(side: BorderSide.none),
        backgroundColor: Colors.indigo,
        shadowColor: Colors.indigo,
      ),
    );
  }
}

class Contact extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ContactState();
  }
}

class ContactState extends State<Contact>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
        leading: Icon(Icons.contact_phone_outlined),
        title: Text("Contact us for help", textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, shadows: [Shadow(
            offset: Offset(2.5, -2.5), //position of shadow
            blurRadius: 2.0, //blur intensity of shadow
            color: Colors.black.withOpacity(
                0.5), //color of shadow with opacity
          ),
          ], fontWeight: FontWeight.bold),),
        bottomOpacity: 0.3,
        scrolledUnderElevation: 40.0,
        elevation: 5,
        shape: StadiumBorder(side: BorderSide.none),
        backgroundColor: Colors.indigo,
        shadowColor: Colors.indigo,
      ),
    );
  }
}

class Progress extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ProgressState();
  }
}

class ProgressState extends State<Progress>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
        leading: Icon(Icons.analytics_rounded),
        title: Text("Check your progress", textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, shadows: [Shadow(
            offset: Offset(2.5, -2.5), //position of shadow
            blurRadius: 2.0, //blur intensity of shadow
            color: Colors.black.withOpacity(
                0.5), //color of shadow with opacity
          ),
          ], fontWeight: FontWeight.bold),),
        bottomOpacity: 0.3,
        scrolledUnderElevation: 40.0,
        elevation: 5,
        shape: StadiumBorder(side: BorderSide.none),
        backgroundColor: Colors.indigo,
        shadowColor: Colors.indigo,
      ),
    );
  }
}




