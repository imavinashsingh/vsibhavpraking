import 'Sidenav.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Records extends StatefulWidget {
  @override
  _RecordsState createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Smart Shoes"),),
      drawer: SideNav(),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(FontAwesomeIcons.running),
              title: Text("Home Parking \n\nparikrama apt (2), hanuman nagar, panchavati, adgaon, nashik"),
              subtitle: Text('12/2/2019 20:2:12'),
              trailing: Icon(Icons.send),
              onTap: (){
                print("click");
                Navigator.of(context).pushNamed('detailrecord');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(FontAwesomeIcons.running),
              title: Text("Collae Parking \n\nSandip Foundation, Nashik, Maharastra"),
              subtitle: Text('12/2/2019 20:2:12'),
              trailing: Icon(Icons.send),
            ),
            Divider(),
            ListTile(
              leading: Icon(FontAwesomeIcons.running),
              title: Text("Collae Parking \n\nSandip Foundation, Nashik, Maharastra"),
              subtitle: Text('12/2/2019 20:2:12'),
              trailing: Icon(Icons.send),
            ),
            Divider(),
            ListTile(
              leading: Icon(FontAwesomeIcons.running),
              title: Text("Collae Parking \n\nSandip Foundation, Nashik, Maharastra"),
              subtitle: Text('12/2/2019 20:2:12'),
              trailing: Icon(Icons.send),
            ),
            Divider(),
            ListTile(
              leading: Icon(FontAwesomeIcons.running),
              title: Text("Collae Parking \n\nSandip Foundation, Nashik, Maharastra"),
              subtitle: Text('12/2/2019 20:2:12'),
              trailing: Icon(Icons.send),
            ),


          ],
        ),
      ),
    );
  }
}
