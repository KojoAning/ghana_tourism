import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ghana_tourism/eventdetails.dart';
import 'package:ghana_tourism/slidertemp.dart';
import 'package:ghana_tourism/videoplayer.dart';
import 'package:video_player/video_player.dart';

class viewevent extends StatefulWidget {
  String imagepath;
  var eventname;
  viewevent({required this.imagepath, this.eventname});

  @override
  State<viewevent> createState() => _vieweventState();
}

class _vieweventState extends State<viewevent> {
  final List<String> imgList = [
    'https://images.squarespace-cdn.com/content/v1/5e4bb1b5cf2c9e023bc0ab3a/8321fc39-6630-43ad-8f64-a38e98aedca9/Stonebwoy_poster.png?format=750w',
    'https://images.squarespace-cdn.com/content/v1/5e4bb1b5cf2c9e023bc0ab3a/997a4788-dfee-4b6d-8ac7-96ab45665dbd/Burna%2BBoy.png?format=750w',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('videos/as.mp4',
        videoPlayerOptions: VideoPlayerOptions(allowBackgroundPlayback: true))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  String data =
      'Afrochella is a celebration of Africas diverse culture and the vibrant work of African creatives and entrepreneurs\nThe festival is designed to elevate and highlight the thrilling and thriving millennial talent in Africa by introducing an interactive event that teaches, explains and explores various cultures through a pioneering approach. Afrochellans will experience art and creative activations from the continent, celebrate African music, and taste premium and cultured cuisine';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 39, 39),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                    child: Column(
                  children: [
                    Container(
                      height: 170,
                      child: Image.asset(
                        widget.imagepath,
                        fit: BoxFit.cover,
                      ),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.green),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          eventdetails(
                                            Imagepath: widget.imagepath,
                                          )));
                            },
                            child: Container(
                              height: 34,
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.purple),
                              child: Center(
                                child: Text(
                                  'Event Details',
                                  style: TextStyle(
                                      fontFamily: 'Satoshi2',
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 90,
                            child: Center(
                                child: Text(
                              'Tickets',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Satoshi2',
                                  color: Colors.white),
                            )),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Color.fromARGB(255, 244, 44, 111)),
                          )
                        ],
                      ),
                    )
                  ],
                )),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(17),
                    child: Container(
                      height: 530,
                      // width: 370,
                      child: Stack(
                        children: [
                          Center(
                            // heightFactor: 1,
                            child: _controller.value.isInitialized
                                ? AspectRatio(
                                    aspectRatio: _controller.value.aspectRatio,
                                    child: VideoPlayer(_controller),
                                  )
                                : Container(),
                          ),
                          Center(
                            child: FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  _controller.value.isPlaying
                                      ? _controller.pause()
                                      : _controller.play();
                                });
                              },
                              child: Icon(
                                _controller.value.isPlaying
                                    ? Icons.pause
                                    : Icons.play_arrow,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '# Event Name',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                      fontFamily: 'Satoshi'),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  child: Container(
                    height: 200,
                    width: 370,
                    child: Stack(
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 700,
                            viewportFraction: 1.0,
                            enlargeCenterPage: false,
                            autoPlay: true,
                          ),
                          items: imgList.map((item) => Container(
                              // child: Image.network(
                              //   item,
                              //   fit: BoxFit.fill,
                              //   height: 600,
                              // ),
                              )).toList(),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Center(
                              child: Text(
                                'event description Goes here',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
