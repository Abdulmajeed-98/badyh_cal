import 'package:badiyh_calendar/core/constants/scaffold_key.dart';
import 'package:badiyh_calendar/core/models/navigation.dart';
import 'package:badiyh_calendar/core/views/widgets/app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_back_button.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_drawer_icon.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_grund_img.dart';
import 'package:badiyh_calendar/db/common_quistion.dart';
import 'package:flutter/material.dart';

class FaqScreen extends StatelessWidget {
  FaqScreen({super.key, required this.nav});
  final Navigation nav;
  CommonQuistionDb q = CommonQuistionDb();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
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
                    CusGrundImg(txt: nav.title),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Group-6.png'))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'أعرف أكثر',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
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
                                    Colors.white,
                                    Colors.grey[300]!
                                  ])),
                                  child: ExpansionTile(
                                    leading: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/messages-question-1.png'))),
                                    ),
                                    childrenPadding: EdgeInsets.all(10),
                                    title: Text(
                                        q.CommonQuistion[index].keys.first),
                                    children: [
                                      Text(q.CommonQuistion[index].values.first)
                                    ],
                                  ),
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  height: 10,
                                ),
                            itemCount: q.CommonQuistion.length)),
                  ],
                ),
                CusDrawerIcon(
                  onPressed: () => scaffoldKey.currentState!.openDrawer(),
                ),
                CusBackButton(),
              ],
            )),
      ),
    );
  }
}
