import 'package:badyh_cal/core/models/category.dart';
import 'package:badyh_cal/core/models/post.dart';
import 'package:badyh_cal/core/viewmodels/posts_vm.dart';
import 'package:badyh_cal/core/views/widgets/app_drawer.dart';
import 'package:badyh_cal/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:badyh_cal/core/views/widgets/cus_button.dart';
import 'package:badyh_cal/core/views/widgets/cus_grund_img.dart';
import 'package:badyh_cal/core/views/widgets/cus_tall_container.dart';
import 'package:badyh_cal/core/views/widgets/cus_wide_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FaqScreen extends StatelessWidget {
  FaqScreen({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            bottomNavigationBar: CusBottomNaviBar(),
            drawer: AppDrawer(),
            key: scaffoldKey,
            body:
                // Obx(() =>
                // postsVm.posts.isEmpty?
                //  Center(
                //         child: CircularProgressIndicator(),
                //       )
                //     :
                Stack(
              children: [
                Column(
                  children: [
                    CusGrundImg(
                        // txt: category.name,
                        ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 14,vertical: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/images/Group-6.png'))
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text('أعرف أكثر',style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      ),
                    ),
                    Expanded(
                        child: ListView.separated(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                            itemBuilder: (context, index) => Container(
                              // height: 60,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(2.5),
                                gradient: LinearGradient(colors: [
                                  Colors.white,Colors.grey[300]!
                                ])
                              ),
                              child: ExpansionTile(
                                leading: Icon(Icons.chat_bubble_outline),
                                childrenPadding: EdgeInsets.all(10),
                                title: Text('هذا النص قابل للتغيير ?'),
                                children: [
                                  Text(
                                      'asdasdsasasadasdgjhjskfhdfsjdghjgdshffghdgfjdhfgdfsjdgajsfsdsfhsdafdsggfjgsf')
                                ],
                              ),
                            ),
                            separatorBuilder: (context, index) => SizedBox(
                                  height: 10,
                                ),
                            itemCount: 5)),
                  ],
                ),
                Positioned(
                  child: IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () => scaffoldKey.currentState!.openDrawer(),
                  ),
                ),
                Positioned(
                  left: 0,
                  // top: 5,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
