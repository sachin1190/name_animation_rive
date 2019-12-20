import 'package:flutter/material.dart';
import 'bunny.dart';
import 'package:smart_flare/smart_flare.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SmartFlareAnim(),
    );
  }
}

class SmartFlareAnim extends StatefulWidget {
  @override
  _SmartFlareAnimState createState() => _SmartFlareAnimState();
}

var activeAreas = [
  ActiveArea(
      area: Rect.fromLTWH(160, 370, 120, 60),
      debugArea: false,
      animationName: 'Untitled',
      onAreaTapped: () {
        print('Running');
      }),
];

class _SmartFlareAnimState extends State<SmartFlareAnim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Name Animation'),
        ),
      ),
      backgroundColor: Colors.lightGreenAccent.shade100,
      body: Stack(
        children: <Widget>[
          Center(
            child: SmartFlareActor(
              width: 800.0,
              height: 800.0, //MediaQuery.of(context).size.height / 2,
              filename: 'assets/name.flr',
              activeAreas: activeAreas,
            ),
          ),
        ],
      ),
    );
  }
}
