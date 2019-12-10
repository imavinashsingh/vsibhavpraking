import 'package:flutter/material.dart';
import 'Sidenav.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
 final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    this.locationlistner.pause();
  }

  var currentLocation;
  var locationlistner;

  //form key for popup form
  final _formKey = GlobalKey<FormState>();
  bool boolStatus = true;
  _MyHomePageState() {
    _getlocation();
  }

  _getlocation() async {
    var location = new Location();
    try {
      currentLocation = await location.getLocation();
    } on PlatformException catch (e) {
      if (e.code == 'PERMISSION_DENIED') {
        var error = 'Permission denied';
      }
      currentLocation = null;
    }

    this.locationlistner =
        location.onLocationChanged().listen((LocationData currentLocation) {
      _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(currentLocation.latitude, currentLocation.longitude),
        zoom: 14.4746,
      )));
    });
  }

  GoogleMapController _controller;
  Set<Marker> allMarkers = {};

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Smart Way"),
      ),
      drawer: SideNav(),
      body: Center(
        child: Container(
          child: GoogleMap(
              mapType: MapType.hybrid,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController c) {
                _controller = c;
              },
              // myLocationEnabled: true,
              //myLocationButtonEnabled: true,
              compassEnabled: true,
              markers: allMarkers,
            ),
        ),
      ),
       floatingActionButton: SpeedDial(
        visible: true,
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
              child: Icon(Icons.add),
              backgroundColor: Colors.red,
              label: 'Save Parking',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Name'),
                                  keyboardType: TextInputType.number,
                                  validator: (v) {
                                    if (v.isEmpty) {
                                      return "Name of Parking";
                                    } 
                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Radius in meter'),
                                  keyboardType: TextInputType.number,
                                  validator: (v) {
                                    if (v.isEmpty) {
                                      return "Please Enter Radius";
                                    } else if (int.parse(v) < 1) {
                                      return "Radius should not less than 1 meter";
                                    }else
                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RaisedButton(
                                  child: Text("Add Parking"),
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {
                                      _formKey.currentState.save();
                                      //firebase code to validate
                                      print("submited form");
                                    }
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    });
              }),
          SpeedDialChild(
              child: Icon(Icons.swap_horiz),
              backgroundColor: Colors.grey,
              label: 'Live Traking Toggle',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () {
                //this.locationlistner.cancel();
                //print(this.locationlistner);
                if (this.boolStatus == true) {
                  print("inside" + this.boolStatus.toString());
                  this.locationlistner.pause();
                } else {
                  print("inside" + this.boolStatus.toString());
                  this.locationlistner.resume();
                }
                this.boolStatus = !this.boolStatus;
                print(boolStatus);
              }),
          SpeedDialChild(
              child: Icon(Icons.my_location),
              backgroundColor: Colors.grey,
              label: 'Get My Location',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () {
                setState(() {
                  allMarkers.add(Marker(
                    markerId: MarkerId("My Location"),
                    draggable: false,
                    position: LatLng(
                        currentLocation.latitude, currentLocation.longitude),
                  ));
                });
              }),
        ],
      ),
    );
    
  }
  
}