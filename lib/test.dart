import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:ghana_tourism/about.dart';

void main() => runApp(MyAppdd());

class MyAppdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Example(),
    );
  }
}

class Example extends StatefulWidget {
  Example({Key? key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            DefaultTabController(
              length: 6,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 400,
                    color: Colors.black,
                  ),
                  ButtonsTabBar(
                    backgroundColor: Colors.red,
                    unselectedBackgroundColor: Colors.grey[300],
                    unselectedLabelStyle: TextStyle(color: Colors.black),
                    labelStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    tabs: [
                      Tab(
                        icon: Icon(Icons.directions_car),
                        text: "car",
                      ),
                      Tab(
                        icon: Icon(Icons.directions_transit),
                        text: "transit",
                      ),
                      Tab(icon: Icon(Icons.directions_bike)),
                      Tab(icon: Icon(Icons.directions_car)),
                      Tab(icon: Icon(Icons.directions_transit)),
                      Tab(icon: Icon(Icons.directions_bike)),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: <Widget>[
                        about(),
                        about(),
                        about(),
                        about(),
                        about(),
                        about(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
