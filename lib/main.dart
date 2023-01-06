import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ghana_tourism/Homepage.dart';
import 'package:intl/intl.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(fontFamily: 'Satoshi'),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    value: 30,
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat(reverse: false);
  late final Animation<double> _animation = Tween(begin: 1.1, end: 1.5).animate(
      CurvedAnimation(
          parent: _controller,
          curve: Interval(0.0, 0.9, curve: Curves.decelerate)));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  navigatePage() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => login()));
  }

  splashMove() {
    return Timer(Duration(seconds: 4), navigatePage);
  }

  @override
  void initState() {
    super.initState();
    splashMove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ScaleTransition(
              scale: _animation,
              child: Container(
                child: Image.asset(
                    fit: BoxFit.cover,
                    height: 900,
                    width: 400,
                    'images/landingimage.jpg'),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black.withOpacity(.6),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/jjj.png',
                    height: 120,
                    width: 120,
                  ),
                  Text(
                    'Experience \nGhana',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Satoshi',
                        fontSize: 22),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Powered by Feather ',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
