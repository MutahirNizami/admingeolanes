// import 'package:flutter/material.dart';
// import 'package:geolanesproject/utilies/mycolors.dart';

// class CustomContainer extends StatelessWidget {
//   final String imageUrl;
//   final String name;
//   final String title;
//   final String subtitle;
//   final int itemCount;

//   const CustomContainer({
//     super.key,
//     required this.imageUrl,
//     required this.name,
//     required this.title,
//     required this.subtitle,
//     required this.itemCount,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text("hellojani"),
//         Expanded(
//           child: ListView.builder(
//             itemCount: itemCount,
//             // scrollDirection: Axis.horizontal,
//             itemBuilder: (context, index) {
//               return Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Stack(
//                     children: [
//                       Container(
//                         height: 200,
//                         decoration: BoxDecoration(
//                           color: Mycolor().badgecolor,
//                           image: DecorationImage(
//                             image: AssetImage(imageUrl),
//                             fit: BoxFit.cover,
//                           ),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 10,
//                         left: 10,
//                         child: Text(
//                           name,
//                           style: const TextStyle(
//                             fontSize: 24,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             shadows: [
//                               Shadow(
//                                 blurRadius: 5.0,
//                                 color: Colors.black,
//                                 offset: Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     title,
//                     style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   Text(
//                     subtitle,
//                     style: const TextStyle(
//                       fontSize: 14,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
