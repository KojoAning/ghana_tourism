import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghana_tourism/Homepage.dart';

void main() {
  runApp(const landing_page());
}

class landing_page extends StatefulWidget {
  const landing_page({Key? key}) : super(key: key);

  @override
  State<landing_page> createState() => _landing_pageState();
}

class _landing_pageState extends State<landing_page> {
  // navigatePage() {
  //   Navigator.of(context)
  //       .pushReplacement(MaterialPageRoute(builder: (context) => login()));
  // }

  // splashMove() {
  //   return Timer(Duration(seconds: 2), navigatePage);
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   splashMove();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('images/landingimage.jpg'))),
      ),
    );
  }
}
