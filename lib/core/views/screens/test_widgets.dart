import 'package:badiyh_calendar/core/model/categories_api.dart';
import 'package:badiyh_calendar/core/viewmodels/articles_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/categories_v_m.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_drawer_icon.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_grund_img.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_stack.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestWidgets extends StatelessWidget {
  TestWidgets({super.key});

  CategoriesVM cvm = CategoriesVM();
  final avm = Get.find<ArticlesVM>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          bottomNavigationBar: CusBottomNaviBar(),
          drawer: CusAppDrawer(),
          body: Stack(
            children: [
              Center(
                  child: Column(
                children: [
                  CusGrundImg(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton(
                        items: ['asd', 'zxc', 'fgh']
                            .map((e) =>
                                DropdownMenuItem(value: e, child: Text(e)))
                            .toList(),
                        onChanged: (value) {},
                        hint: const Text('التصنيف'),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.view_headline_rounded)),
                    ],
                  ),
                  Expanded(
                    child: GridView.builder(
                        padding:
                            const EdgeInsets.only(bottom: 50, right: 10, left: 10),
                        itemCount: 9,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 10,
                            mainAxisExtent: 100,
                            mainAxisSpacing: 20,
                            crossAxisCount: 2),
                        itemBuilder: (ctx, i) {
                          return const CusStack();
                        }),
                  )
                  // FutureBuilder(
                  //     future: avm.getArticles('1'),
                  //     builder: (i, snapshot) {
                  //       if (snapshot.connectionState == ConnectionState.done) {
                  //         return
                  //         GridView.builder(
                  //           itemCount: snapshot.data!.length,
                  //             gridDelegate:
                  //                 SliverGridDelegateWithMaxCrossAxisExtent(
                  //                     maxCrossAxisExtent: 2),
                  //             itemBuilder: (ctx, i) {
                  //               return CusStack();
                  //             });
                  //       } else {
                  //         return Center(child: CircularProgressIndicator());
                  //       }
                  //     })
                ],
              )),
              CusDrawerIcon(),
            ],
          ),
        ),
      ),
    );
  }
}
