import 'dart:html';

import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Custom_components: TextArea",
      home: TextBox()
    )
  );
}

class TextBox extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TextBoxState();
  }
}

class TextBoxState extends State<TextBox>{
  TextEditingController txtController = TextEditingController();
  var display = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Custom TextBox Example"),
      ),
      body: Container(
        child: Center(

          child:ListView(
            children: <Widget>[
              SizedBox(height: 50.0,),
              TextField(
                  controller: txtController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "What's on your mind?",
                      labelText: "Spit it out",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      )
                  ),
                  onSubmitted: (String newVal){
                    newVal = txtController.text;
                    setState(() {
                      this.display = "You have said: "+newVal;
                    });
                  }
              ),
              SizedBox(height: 50.0,),
              Center(
                child:Text(display, style: TextStyle(
                  fontSize: 70.0,
                ),)
              )
            ],
          )
        )
      ),
    );

  }

}