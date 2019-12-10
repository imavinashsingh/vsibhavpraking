import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey.shade800,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Edit Your Profile"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(5),
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                            alignment: Alignment.center,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                CircleAvatar(
                                  radius: 60,
                                  backgroundImage:
                                      AssetImage('assets/user.jpeg'),
                                ),
                                GestureDetector(
                                  child: Icon(FontAwesomeIcons.plusCircle,color: Colors.red,),
                                )
                              ],
                            )),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Your Name'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        TextFormField(
                          decoration: InputDecoration(labelText: 'Your Email'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Your Phone'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Your Location'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: SizedBox(
                            width: double.infinity,
                            height: 40,
                            child: RaisedButton(
                              color: Colors.blue,
                            onPressed: () {
                              // Validate will return true if the form is valid, or false if
                              // the form is invalid.
                              if (_formKey.currentState.validate()) {
                                // Process data.
                              }
                            },
                            child: Text('Submit',style: TextStyle(color: Colors.white),),
                          ),
                          )
                        ),
                        // Text(
                        //   "Put your data accurately\n All calculation depends on it.*\n Your data is protected and not share with any company*\n\n\n *Terms and condtions apply"
                        // )
                      ],
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
