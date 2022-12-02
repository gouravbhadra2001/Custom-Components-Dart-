import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Custom Component: Validation_TextForm",
    home: CustomValidTextFormField(),
  ));
}

class CustomValidTextFormField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CustomValidTextFormFieldState();
  }
}

class CustomValidTextFormFieldState extends State<CustomValidTextFormField> {
  var _formKey1 = GlobalKey<FormState>();
  TextEditingController txtController = TextEditingController();
  var display = '';
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(30.0),
          child: Center(
            child: Container(
              child: Form(
                  key: _formKey1,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: ListView(
                      children: <Widget>[
                        TextFormField(
                            enabled: true,
                            controller: txtController,
                            decoration: InputDecoration(
                                hintText: "What's on your mind?",
                                labelText: "Spit it out",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0))),
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return "Required";
                            }),
                        SizedBox(height: 40.0,),
                        ElevatedButton(onPressed: (){
                          setState(() {
                            if (_formKey1.currentState!.validate()){
                              this.display = "Status: OK";
                            }
                            else{
                              this.display = '';
                            }
                          });
                        }, child: Text("Validate")),
                        SizedBox(height: 50.0,),
                        Center(
                          child: Text(
                            display, style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50.0
                          ),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          )),
    );
  }
}
