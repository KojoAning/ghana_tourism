import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghana_tourism/eventdetails.dart';
import 'package:ghana_tourism/slidertemp.dart';
import 'package:ghana_tourism/viewevent.dart';

class live_events extends StatefulWidget {
  const live_events({Key? key}) : super(key: key);

  @override
  State<live_events> createState() => _live_eventsState();
}

class _live_eventsState extends State<live_events> {
  List images = [
    "images/bloom-bar.jpg",
    "images/honey suckle.png",
    "images/Afrochella-2021.jpg",
    "images/images.jpg"
  ];

  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => eventdetails(
                              Imagepath: images[index],
                            )));
              },
              child: Container(
                height: 150,
                width: 320,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.8), BlendMode.dstATop),
                        fit: BoxFit.cover,
                        image: AssetImage(
                          images[index],
                        )),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Dec',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '25',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(.5),
                                borderRadius: BorderRadius.circular(7)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          '',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                color = Colors.green;
                              });
                            },
                            icon: Icon(
                              Icons.bookmark,
                              color: color,
                              size: 30,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
