// import 'package:flutter/material.dart';

// class Cust_Appbar extends StatelessWidget {
//   Cust_Appbar({
//     super.key,
//     this.title,
//     required this.txtTitle,
//     this.actions,
//     this.preferredSize,
//   });
//   Widget? child, title;
//   double? preferredSize;
//   List<Widget>? actions;
//   String txtTitle;
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.white,
//       title: title ??
//           Text(txtTitle,
//               style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
//       centerTitle: true,
//       actions: actions ??
//           [
//             Container(
//               padding: const EdgeInsets.all(20),
//               child: const Row(
//                 children: [
//                   // Icon(Icons.menu, size: 30),
//                   Icon(Icons.arrow_forward_ios, size: 25),
//                 ],
//               ),
//             )
//           ],
//     );
//   }
// }
