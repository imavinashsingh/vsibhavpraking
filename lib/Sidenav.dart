import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class SideNav extends StatelessWidget {
  const SideNav({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child:Container(
          color: Colors.grey.shade800,
            child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/user.jpeg'),
                ),
                accountName: Text("Vaibhav Mandlik"),
                accountEmail: Text("vaibhav@gmail.com"),
                ),
                ListTile(
                  title: Text("Dashboard",style: TextStyle(color: Colors.white),),
                  leading: Icon(FontAwesomeIcons.home,color: Colors.white,),
                  onTap: (){
                    Navigator.of(context).pushReplacementNamed('home');
                  },
                ),
                ListTile(
                  title: Text("Profile",style: TextStyle(color: Colors.white),),
                  leading: Icon(FontAwesomeIcons.userAlt,color: Colors.white,),
                  onTap: (){
                    Navigator.of(context).pushReplacementNamed('profile');
                  },
                ),
                ListTile(
                  title: Text("My Saved Parking",style: TextStyle(color: Colors.white),),
                  leading: Icon(FontAwesomeIcons.lock,color: Colors.white,),
                  onTap: (){
                    Navigator.of(context).pushReplacementNamed('records');
                  },
                ),
                ListTile(
                  title: Text("Virtual lock",style: TextStyle(color: Colors.white),),
                  leading: Icon(FontAwesomeIcons.lock,color: Colors.white,),
                  onTap: (){
                   // Navigator.of(context).pushReplacementNamed('vlock');
                  },
                ),
                ListTile(
                  title: Text("Do Navigate",style: TextStyle(color: Colors.white),),
                  leading: Icon(FontAwesomeIcons.locationArrow,color: Colors.white,),
                  onTap: (){
                    Navigator.of(context).pushReplacementNamed('donavigation');
                  },
                ),
                ListTile(
                  title: Text("My Vechle",style: TextStyle(color: Colors.white),),
                  leading: Icon(FontAwesomeIcons.car,color: Colors.white,),
                  onTap: (){
                    Navigator.of(context).pushReplacementNamed('myvechle');
                  },
                ),
                ListTile(
                  title: Text("Logout",style: TextStyle(color: Colors.white),),
                  leading: Icon(FontAwesomeIcons.powerOff,color: Colors.white,),
                ),
            ],
          ),),
        );
  }
}