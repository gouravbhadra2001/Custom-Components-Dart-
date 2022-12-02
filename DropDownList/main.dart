import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Custom_components: DropDownList",
      home: DropDownList()
    )
  );
}

class DropDownList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DropDownListState();
  }
}

class DropDownListState extends State<DropDownList>{
  var _currencies = ["None","Item1", "Item2", "Item3", "Item4"];
  var current = "None";

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Custom DropDownList Example"),
      ),
      body: Container(
        child: Center(
          child: DropdownButton<String>(
              items: _currencies.map((String value){
                return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value)
                );
              }).toList(),
              value: current,
              onChanged: (var newValue){
                setState(() {
                  current = newValue!;
                });
              }),
        )
      ),
    );
  }

}
