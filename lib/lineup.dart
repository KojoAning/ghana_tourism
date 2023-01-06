import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class lineup extends StatefulWidget {
  const lineup({Key? key}) : super(key: key);

  @override
  State<lineup> createState() => _lineupState();
}

class _lineupState extends State<lineup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.red,
              height: 500,
              width: 380,
            ),
          ],
        ),
      ),
    );
  }
}
