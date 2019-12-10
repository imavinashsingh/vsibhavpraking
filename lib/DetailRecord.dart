import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class DetailRecord extends StatefulWidget {
  DetailRecord({Key key}) : super(key: key);

  @override
  _DetailRecordState createState() => _DetailRecordState();
}

class _DetailRecordState extends State<DetailRecord> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Smart Shoes"),centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //map
            Container(
              height: 200,
              width: double.infinity,
              child: GoogleMap(
                mapType: MapType.hybrid,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
            //distance 
            ListTile(
              leading: Icon(FontAwesomeIcons.road),
              title: Text("50 km"),
              subtitle: Text("Distance"),
            ),
            //calories
            ListTile(
              leading: Icon(FontAwesomeIcons.road),
              title: Text("50 km"),
              subtitle: Text("Calories"),
            ),
            //speed
            ListTile(
              leading: Icon(FontAwesomeIcons.road),
              title: Text("50 km"),
              subtitle: Text("Speed"),
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.road),
              title: Text("50 km"),
              subtitle: Text("Distance"),
            ),
            //steps
            ListTile(
              leading: Icon(FontAwesomeIcons.road),
              title: Text("50 km"),
              subtitle: Text("Steps"),
            )
          ],
        ),
      ),
    );
  }
}