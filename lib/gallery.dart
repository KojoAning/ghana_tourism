import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ghana_tourism/gridtiles.dart';

class gallery extends StatefulWidget {
  const gallery({Key? key}) : super(key: key);

  @override
  State<gallery> createState() => _galleryState();
}

class _galleryState extends State<gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 550,
              width: 380,
              color: Colors.red,
            ),
            SizedBox(
              height: 20,
            ),
            GridView.custom(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverWovenGridDelegate.count(
                crossAxisCount: 2,
                pattern: [
                  WovenGridTile(0.9),
                  WovenGridTile(
                    4.5 / 7,
                    crossAxisRatio: 0.9,
                    alignment: AlignmentDirectional.centerEnd,
                  ),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                childCount: 7,
                (context, index) => Container(
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
