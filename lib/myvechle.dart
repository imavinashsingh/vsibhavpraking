//shows smart shoes make provison to add smartshoes with qr code 
import 'Sidenav.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyVichle extends StatefulWidget {
  MyVichle({Key key}) : super(key: key);

  @override
  _MyVichleState createState() => _MyVichleState();
}

class _MyVichleState extends State<MyVichle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Smart Way"),
          centerTitle: true,
        ),
        drawer: SideNav(),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Activa 4g - Bike"),
              subtitle: Text("Device is configured at 12/23/12 4:3:3"),
              leading: Icon(FontAwesomeIcons.biking),
            ),
            Divider(color: Colors.black12,),
            ListTile(
              title: Text("I 10 - Car"),
              subtitle: Text("Device is configured at 12/23/12 4:3:3"),
              leading: Icon(FontAwesomeIcons.car),
            ),
            Divider(color: Colors.black12,),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(FontAwesomeIcons.barcode),
          onPressed: (){
            Navigator.of(context).pushNamed('qrcode');
          },
        ),
    );
  }
}


