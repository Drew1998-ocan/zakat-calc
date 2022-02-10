// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:zakat/constants/styles.dart';
// import 'roundedButton.dart';

// class CategoryCard extends StatelessWidget {
//   const CategoryCard({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all((10)),
//       decoration:
//           BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
//         BoxShadow(
//           color: Colors.black,
//           spreadRadius: 20,
//           offset: Offset.zero,
//           blurRadius: 20,
//         )
//       ]),
//       child: Row(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage(
//                         'assets/pexels-rodnae-productions-8369770'))),
//           ),
//           Container(
//             child: Column(
//               children: [
//                 Text('Money & Gold'),
//                 Text(
//                     'section for the amount of wealth you have interms of gold and money '),
//                 RoundButton(
//                   colours: kGreen,
//                   title: 'Go to page',
//                   onPressed: () {
//                     Get.to('homePage()');
//                   },
//                   iconColor: kWhite,
//                   titleColor: kWhite,
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
