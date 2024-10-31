import 'package:badiyh_calendar/core/constants/const_txt.dart';
import 'package:badiyh_calendar/core/constants/const_urls_img.dart';
import 'package:badiyh_calendar/core/models/bee_calendar.dart';
import 'package:badiyh_calendar/core/viewModels/bee_calendar_VM.dart';
import 'package:badiyh_calendar/core/views/widgets/cust_BoxShadow.dart';
import 'package:badiyh_calendar/core/views/widgets/cust_appBarCalendar.dart';
import 'package:badiyh_calendar/core/views/widgets/cust_boxImg.dart';
import 'package:badiyh_calendar/core/views/widgets/cust_buttonApp.dart';
import 'package:badiyh_calendar/core/views/widgets/app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class BeeCalendarScreen extends StatelessWidget {
  BeeCalendarScreen({super.key});
  BeeCalendarVM bvm = BeeCalendarVM();
  Const_Txt txt = Const_Txt();
  const_urls_img url = const_urls_img();
  late List<BeeCalendar> allBee;

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    allBee = bvm.loadAllBeePhases();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          drawer: AppDrawer(),
          key: scaffoldKey,
          bottomNavigationBar: CusBottomNaviBar(
              // onPresHom: () => Get.back(),
              // onPresEv: () => Get.offNamed("/events"),
              onPresBee: () {},
              // onPresCal: () => Get.offNamed("/calendar"),
              imgBee: Image.asset(url.beeOn)),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Cust_AppbarCalendar(
                  txt: txt.beesPhase,
                  onPressed: () => Get.offNamed("/calendar"),
                  scafKey: () => scaffoldKey.currentState!.openDrawer(),
                ),
                Expanded(
                    child: Consumer<BeeCalendarVM>(builder: (ctx, bee, child) {
                  return GridView.builder(
                    itemCount: bee.showAll
                        ? bee.displayedBee.length
                        : 4, //allBee.length,
                    padding: EdgeInsets.only(bottom: 20, left: 8, right: 8),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 18,
                            mainAxisSpacing: 16,
                            mainAxisExtent: 100,
                            crossAxisCount: 1),
                    itemBuilder: (ctx, index) => Cust_BoxShadow(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 3),
                        alignmen: Alignment.center,
                        // height: 200,
                        // width: 200,
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Cust_ImgBox(url: url.hony),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.24,
                                  child: Text(
                                    bee.displayedBee[index].phaseName
                                        .toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.03),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Cust_ImgBox(url: url.star),
                                  Text(
                                    bee.displayedBee[index].stars!
                                        .map((star) => star.starName)
                                        .join(' - '),
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.032, // 12.5,

                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ]),
                                Row(children: [
                                  // Text.rich( TextSpan()),
                                  Text("من ",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03, // 12,
                                          fontWeight: FontWeight.w400)),
                                  Text(
                                      bee.displayedBee[index].startDate
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.032, // 12.5,
                                          fontWeight: FontWeight.w700)),
                                  Text(" الى ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400)),
                                  Text(
                                      bee.displayedBee[index].endDate
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.032, // 12.5,
                                          fontWeight: FontWeight.w700))
                                ])
                              ],
                            ),
                          ],
                        )),
                  );
                }))
              ],
            ),
          ),
          floatingActionButton: Consumer<BeeCalendarVM>(
            builder: (context, bee, child) {
              return Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: -10,
                    right: MediaQuery.of(context).size.width * 0.4,
                    child: Cust_ButtonApp(
                      txt: bee.showAll ? txt.viewLes : txt.viewAll,
                      // height: 100,
                      width: MediaQuery.of(context).size.width * 0.3,
                      onTap: () {
                        Provider.of<BeeCalendarVM>(context, listen: false)
                            .toggleShowAll();
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
