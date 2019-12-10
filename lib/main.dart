import 'package:flutter/material.dart';
import 'package:parking/EditProfile.dart';
import 'package:parking/Profile.dart';
import 'package:parking/Records.dart';
import 'package:parking/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        'home':(_)=>MyHomePage(),
        'profile':(_)=>ProfilePage(),
        'editprofile':(_)=>EditProfile(),
        'records':(_)=>Records(),
        
      }
    );
  }
}


