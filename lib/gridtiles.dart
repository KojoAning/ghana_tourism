import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class gridtiles extends StatefulWidget {
  const gridtiles({Key? key}) : super(key: key);

  @override
  State<gridtiles> createState() => _gridtilesState();
}

class _gridtilesState extends State<gridtiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.custom(
      gridDelegate: SliverWovenGridDelegate.count(
        crossAxisCount: 2,
        pattern: [
          WovenGridTile(1),
          WovenGridTile(
            5 / 7,
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
    ));
  }
}
