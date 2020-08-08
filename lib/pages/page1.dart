import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:neumorphic/neumorphic.dart';

class Page1  extends StatelessWidget {

  final String phone = 'tel:+352661585300';

  _callPhone() async {
    if (await canLaunch(phone)) {
      await launch(phone);
    } else {
      throw 'Could not Call Phone';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('assets/images/1.jpg'),
            ),
            Text(
              'Franck Ehrhart',
              style: TextStyle(
              //  fontFamily: 'Pacifico',
                fontSize: 30.0,
                color: Colors.black,
              ),
            ),
            Text(
              'RE/MAX - Immo Experts',
              style: TextStyle(
             //   fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
                letterSpacing: 2.5,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            NeuCard(
              // State of Neumorphic (may be convex, flat & emboss)
              curveType: CurveType.concave,

              // Elevation relative to parent. Main constituent of Neumorphism
              bevel: 12,

              // Specified decorations, like `BoxDecoration` but only limited
              decoration: NeumorphicDecoration(
                  borderRadius: BorderRadius.circular(8)
              ),
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.blue,
                ),
                title: Text(
                  '+352 661 585 300',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Source Sans Pro',
                    color: Colors.blue.shade900,
                  ),
                ),
                onTap: _callPhone,
              ),
            ),
        Card(
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: ListTile(
            leading: Icon(
              Icons.email,
              color: Colors.blue,
            ),
            title: Text(
              'franck.ehrhart@remax.lu',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Source Sans Pro',
                color: Colors.blue.shade900,
              ),
            ),
          ),
        ),

          ],
        ),
      ),
    );
  }
}