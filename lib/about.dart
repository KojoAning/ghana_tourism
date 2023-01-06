import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class about extends StatelessWidget {
  String text =
      'Afrochella is a celebration of Africas diverse culture and the vibrant work of African creatives and entrepreneurs\nThe festival is designed to elevate and highlight the thrilling and thriving millennial talent in Africa by introducing an interactive event that teaches, explains and explores various cultures through a pioneering approach. Afrochellans will experience art and creative activations from the continent, celebrate African music, and taste premium and cultured cuisine';

  about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF921212),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                    child: Icon(
                      Icons.calendar_month,
                      size: 35,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 135, 46, 46),
                        borderRadius: BorderRadius.circular(12)),
                    height: 60,
                    width: 60),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '14th December 2022',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Satoshi'),
                    ),
                    Text(
                      'Tuesday 4pm - 6pm',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Satoshi',
                          color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                    child: Icon(
                      Icons.place,
                      size: 35,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 66, 169, 107),
                        borderRadius: BorderRadius.circular(12)),
                    height: 60,
                    width: 60),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Accra Sports Stadium',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Satoshi',
                          color: Colors.white),
                    ),
                    Text(
                      'Location',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Satoshi'),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                    child: Icon(
                      Icons.person,
                      size: 35,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 163, 223, 147),
                        borderRadius: BorderRadius.circular(12)),
                    height: 60,
                    width: 60),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Salim Abbas',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Satoshi',
                          color: Colors.white),
                    ),
                    Text(
                      'Organizer',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Satoshi'),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text + text,
              style: TextStyle(fontFamily: 'Satoshi', color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
