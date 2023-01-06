// import 'package:flutter/material.dart';

// import 'carousel.dart';

// class CarouselCard extends StatelessWidget {
//   CarouselCard({required this.car});

//   TeslaCar car;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//         padding: EdgeInsets.only(
//           top: 32.0,
//           left: 8.0,
//           right: 8.0,
//         ),
//         child: Container(
//           width: MediaQuery.of(context).size.width * 0.7,
//           height: MediaQuery.of(context).size.height * 0.5,
//           decoration: BoxDecoration(
//             // color: Colors.redAccent,
//             borderRadius: BorderRadius.circular(16.0),
//             boxShadow: [
//               BoxShadow(
//                   color: kShadowColor, offset: Offset(0, 20), blurRadius: 10.0),
//             ],
//             image: DecorationImage(
//                 image: NetworkImage(car.image), fit: BoxFit.cover),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Container(
//                   width: 44,
//                   height: 44,
//                   child: Image.network(
//                     'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Tesla_Motors.svg/595px-Tesla_Motors.svg.png',
//                     fit: BoxFit.contain,
//                   ),
//                 ),
//               ),
//               Spacer(),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: <Widget>[
//                     Spacer(),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: <Widget>[
//                         Text(
//                           car.model,
//                           style: kCardTitleStyle,
//                         ),
//                         Container(
//                           height: 100,
//                           width: MediaQuery.of(context).size.width * 0.6,
//                           child: Text(
//                             car.description,
//                             style: kCardDescriptionTextStyle,
//                             textAlign: TextAlign.end,
//                             overflow: TextOverflow.ellipsis,
//                             maxLines: 5,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
