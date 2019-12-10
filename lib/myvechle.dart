//shows smart shoes make provison to add smartshoes with qr code 
import 'Sidenav.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyShoes extends StatefulWidget {
  MyShoes({Key key}) : super(key: key);

  @override
  _MyShoesState createState() => _MyShoesState();
}

class _MyShoesState extends State<MyShoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Smart Shoes"),
          centerTitle: true,
        ),
        drawer: SideNav(),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text("shoes 234"),
              subtitle: Text("Shoes is configured at 12/23/12 4:3:3"),
              leading: Icon(FontAwesomeIcons.shoePrints),
            ),
            Divider(color: Colors.black12,),
            ListTile(
              title: Text("shoes 454"),
              subtitle: Text("Shoes is configured at 12/23/12 4:3:3"),
              leading: Icon(FontAwesomeIcons.shoePrints),
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


