// import 'package:badiyh_calendar/core/model/articles.dart';
// import 'package:badiyh_calendar/core/viewmodels/articles_v_m.dart';
// import 'package:badiyh_calendar/core/viewmodels/categories_v_m.dart';
// import 'package:badiyh_calendar/core/views/screens/home_screen.dart';
// import 'package:badiyh_calendar/core/views/widgets/cus_app_drawer.dart';
// import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
// import 'package:badiyh_calendar/core/views/widgets/cus_grund_img.dart';
// import 'package:badiyh_calendar/core/views/widgets/cus_tall_container.dart';
// import 'package:badiyh_calendar/core/views/widgets/cus_wide_container.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class NewsScreen extends StatelessWidget {
//   NewsScreen({super.key});
//   RxBool isOn = false.obs;
//   var scaffoldKey = GlobalKey<ScaffoldState>();
//   // CategoriesVM cvm = CategoriesVM();
//   late Articles articleVal;
//   final avm = Get.find<ArticlesVM>();
//   @override
//   Widget build(BuildContext context) {
//     final cvm = CategoriesVM.instance;
//     return SafeArea(
//       child: Directionality(
//         textDirection: TextDirection.rtl,
//         child: Scaffold(
//           key: scaffoldKey,
//           bottomNavigationBar: CusBottomNaviBar(),
//           drawer: CusAppDrawer(),
//           body: Stack(
//             children: [
//               Center(
//                   child: Column(
//                 children: [
//                   Obx(()=> CusGrundImg(txt: cvm.title.value,)),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         width: 180,
//                         child: DropdownButton(
//                           padding: EdgeInsets.only(right: 14),
//                           isExpanded: true,
//                           items: ['asd', 'zxc', 'fgh']
//                               .map((e) =>
//                                   DropdownMenuItem(value: e, child: Text(e)))
//                               .toList(),
//                           onChanged: (value) {},
//                           hint: Text(
//                             'التصنيف',
//                           ),
//                         ),
//                       ),
//                       IconButton(
//                           onPressed: () {
//                             isOn.value = !isOn.value;
//                           },
//                           icon: Obx(() => isOn.value
//                               ? Icon(Icons.view_headline_rounded)
//                               : Icon(Icons.grid_view_outlined))),
//                     ],
//                   ),
//                   Obx(
//                     () => Expanded(
//                       child: isOn.value
//                           ? GridView.builder(
//                               padding: EdgeInsets.only(
//                                   bottom: 30, top: 10, right: 14, left: 14),
//                               itemCount: avm.art.value.length,
//                               gridDelegate:
//                                   SliverGridDelegateWithFixedCrossAxisCount(
//                                       crossAxisSpacing: 10,
//                                       mainAxisExtent:
//                                           (MediaQuery.of(context).size.width /
//                                                   2.23) -
//                                               10,
//                                       mainAxisSpacing: 10,
//                                       crossAxisCount: 2),
//                               itemBuilder: (ctx, i) {
//                                 articleVal = avm.art.value[i];
//                                 return CusTallContainer(
//                                   onTap: () => Navigator.pushNamed(ctx,'/home'),
//                                     image: articleVal.mainImage!,
//                                     dateTxt: articleVal.publishedDate!
//                                         .replaceRange(10, null, ''),
//                                     nameTxt: 'asda',
//                                     titleTxt: articleVal.title!);
//                               })
//                           : ListView.separated(
//                               padding: EdgeInsets.only(
//                                   bottom: 30, top: 10, left: 14, right: 14),
//                               separatorBuilder: (context, index) => SizedBox(
//                                     height: 10,
//                                   ),
//                               itemCount: avm.art.value.length,
//                               itemBuilder: (ctx, i) {
//                                 articleVal = avm.art.value[i];
//                                 return CusWideContainer(
//                                     image: articleVal.mainImage!,
//                                     dateTxt: articleVal.publishedDate!
//                                         .replaceRange(10, null, ''),
//                                     nameTxt: 'asda',
//                                     titleTxt: articleVal.title!);
//                               }),
//                     ),
//                   )
//                 ],
//               )),
//               // CusDrawerIcon(),
//               Positioned(
//                 child: IconButton(
//                   icon: Icon(
//                     Icons.menu,
//                     color: Colors.white,
//                   ),
//                   onPressed: () => scaffoldKey.currentState!.openDrawer(),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
