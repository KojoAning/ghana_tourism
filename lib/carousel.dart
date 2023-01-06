import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class carousel extends StatelessWidget {
  final List<String> imageList = [
    'https://mlxwvfotkyno.i.optimole.com/QISMD7I-Si5zHtdn/w:auto/h:auto/q:auto/https://i2.wp.com/the49thstreet.com/wp-content/uploads/2022/02/WhatsApp-Image-2022-02-28-at-12.28.50-PM.jpeg?fit=828%2C1028&ssl=1',
    'https://i0.wp.com/www.biographyweb.org/wp-content/uploads/2022/10/Tiwa-Savage.jpg?resize=580%2C350&ssl=1',
    'https://image-prod.iol.co.za/resize/640x64000/Photographs-by-Lakin-OgunbanWo?source=https://xlibris.public.prod.oc.inl.infomaker.io:8443/opencontent/objects/f26bbbb2-6565-5700-802b-658f8a8cd723&operation=CROP&offset=0x0&resize=1080x1350&webp=true'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Featured',
                    style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 500,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                ),
                items: imageList
                    .map((e) => ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(
                            fit: StackFit.expand,
                            children: <Widget>[
                              Image.network(
                                e,
                                width: 700,
                                height: 400,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                color: Colors.black.withOpacity(.4),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Performing live',
                                    style: TextStyle(
                                        fontSize: 27,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          '# Afrochella \' 22',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'MC\'s',
                    style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            Container(
              height: 170,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(100)),
                            height: 120,
                            width: 120,
                          ),
                          Text(
                            'Influence',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'DJ\'s',
                    style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            Container(
              height: 170,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(100)),
                            height: 120,
                            width: 120,
                          ),
                          Text(
                            'DJ Black',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
