import 'package:badiyh_calendar/core/model/seasons.dart';
import 'package:badiyh_calendar/core/model/stars.dart';
import 'package:badiyh_calendar/core/viewmodels/CalendarDateVM.dart';
import 'package:badiyh_calendar/core/viewmodels/season_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/star_v_m.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_BoxShadow.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_appBar.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_appBarCalendar.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_dropDownSearch.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_imageStar.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class StarsScreen extends StatelessWidget {
  StarsScreen({super.key});
  var scaffoldKey = GlobalKey<ScaffoldState>();
  StarVM starVM = StarVM();
  SeasonVM seasonVM = SeasonVM();
  CalendarDateVM selectedDate = CalendarDateVM();
  List<Stars> allStar = [];
  List<Seasons> allseason = [];
  @override
  Widget build(BuildContext context) {
    allStar = starVM.loadAllStars();
    allseason = seasonVM.loadAllSeasons();
    int length = 5;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
            drawer: CusAppDrawer(),
            key: scaffoldKey,
            bottomNavigationBar: CusBottomNaviBar(),
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Container(
                  //   alignment: Alignment.center,
                  //   padding:
                  //       const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                  //   margin: const EdgeInsets.only(bottom: 1),
                  //   child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         IconButton(
                  //           icon: const Icon(
                  //             Icons.menu,
                  //             size: 30,
                  //             color: Colors.black,
                  //           ),
                  //           onPressed: () =>
                  //               scaffoldKey.currentState!.openDrawer(),
                  //         ),
                  //         const Text("النجوم",
                  //             style: TextStyle(
                  //                 fontSize: 16, fontWeight: FontWeight.w600)),
                  //         IconButton(
                  //             icon: const Icon(
                  //               Icons.arrow_forward_ios,
                  //               size: 20,
                  //               color: Colors.black,
                  //             ),
                  //             onPressed: () {}),
                  //       ]),
                  // ),

                  Cust_AppbarCalendar(
                      scafKey: () => scaffoldKey.currentState!.openDrawer(),
                      txt: "النجوم"),
                  //   Cust_DropdownSearch(),
                  Expanded(
                      child: GridView.builder(
                    itemCount: allStar.length,
                    padding: EdgeInsets.only(bottom: 20, left: 8, right: 8),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 18,
                            mainAxisSpacing: 16,
                            mainAxisExtent: 128,
                            crossAxisCount: 2),
                    itemBuilder: (ctx, index) => Cust_BoxShadow(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 3),
                      alignmen: Alignment.center,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Cust_ImageStar(),
                            Text(
                              "${allStar[index].starName!}",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(8, 164, 34, 1)),
                            ),
                            Text(
                              "فصل ${allseason[allStar[index].seasonID! - 1].seasonName}",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(147, 147, 147, 1)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${allStar[index].startDate!}",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("  ${Jiffy.now().year.toString()}",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${allStar[index].endDate!}",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                    )),
                                Text("  ${Jiffy.now().year.toString()}",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ],
                            ),
                          ]),
                    ),
                  )),
                  // ElevatedButton(
                  //     onPressed: () {
                  //       length = allStar.length;
                  //       print("${length}");
                  //     },
                  //     child: Text("data"))
                ],
              ),
            )),
      ),
    );
  }
}
