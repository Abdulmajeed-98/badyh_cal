// import 'package:badyh_cal/core/constants/http_urls.dart';
// import 'package:badyh_cal/core/views/widgets/cus_back_button.dart';
// import 'package:badyh_cal/helpers/web_controller.dart';
// import 'package:badyh_cal/helpers/web_controller_two.dart';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class WebScreen extends StatelessWidget {
//   WebScreen({super.key, required this.path});
//   String path;
//   @override
//   Widget build(BuildContext context) {
//     HttpUrls.WEB_VIEW = path;
//     return SafeArea(
//       child: Directionality(
//         textDirection: TextDirection.rtl,
//         child: Scaffold(
//           body: Stack(
//             children: [
//               WebViewWidget(controller: controller_two),
//               Positioned(
//                 left: 10,
//                 top: 15,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(2.5),
//                     color: Color.fromRGBO(15, 15, 15, 1)
//                   ),
//                   child: CusBackButton()),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
