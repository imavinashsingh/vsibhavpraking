import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Sidenav.dart';
class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(backgroundColor: Colors.blue,
           title: Text("Smart Way"),
           centerTitle: true,
         ),
        drawer: SideNav(),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 330,
                    color: Colors.blue,
                  ),
                  Positioned(
                    top: 10,
                    right: 30,
                    child: GestureDetector(
                      child:  Icon(
                      Icons.mode_edit,
                      color: Colors.white,
                    ),
                    onTap: (){
                      Navigator.of(context).pushNamed('editprofile');
                    },
                    )
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 100,
                        margin: EdgeInsets.only(top: 10),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/user.jpeg'),
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.all(4),
                      ),
                      Text(
                        "Vaibhav Mandlik",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: EdgeInsets.all(4),
                      ),
                      SizedBox(height: 10,),
                      UserInfo()
                    ],
                  )
                ],
              ),
            ],
          ),
       ),
    ));
    
  }
  
}


class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Container(
              alignment: Alignment.topLeft,

              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                      child: Column(
                    children: <Widget>[
                      
                      ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        leading: Icon(FontAwesomeIcons.locationArrow),
                        title: Text("Location"),
                        subtitle: Text("Nashik"),
                      ),
                      ListTile(
                        leading: Icon(Icons.email),
                        title: Text("Email"),
                        subtitle: Text("vaibhav@gmail.com"),
                      ),
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text("Phone"),
                        subtitle: Text("91 89750 68948"),
                      ),
                      
                    ],
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
