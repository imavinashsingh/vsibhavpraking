import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

import 'package:parking/Sidenav.dart';

class DoNavigation extends StatefulWidget {
  @override
  _DoNavigationState createState() => _DoNavigationState();
}

class _DoNavigationState extends State<DoNavigation> {
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
    return Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          child: GoogleMap(
            mapType: MapType.hybrid,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ),
        Scaffold(
          appBar: AppBar(title: Text('Smart Way'),backgroundColor: Colors.transparent,elevation: 0,centerTitle: true,),
          drawer: SideNav(),
          backgroundColor: Colors.transparent,
          body:Container(
            padding: EdgeInsets.all(10),
            child:Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  initialValue: 'Inital Address',
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  ),
                  onSaved: (v) {
                  },
                ),
              ),
              SizedBox(height: 10,),
              Container(
                color: Colors.white,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  initialValue: 'Destination Address',
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  ),
                  onSaved: (v) {
                  },
                ),
              )
            ],
          ),),
        )
      ],
    );
  }
}
