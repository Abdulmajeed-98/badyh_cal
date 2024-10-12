import 'package:badiyh_calendar/core/model/bee_calendar.dart';
import 'package:badiyh_calendar/core/viewmodels/bee_calendar_v_m.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_BoxShadow.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_appBarCalendar.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_dropDownSearch.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_imageHony.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_imageStar.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:flutter/material.dart';

class BeeCalendarScreen extends StatelessWidget {
  BeeCalendarScreen({super.key});

  var scaffoldKey = GlobalKey<ScaffoldState>();
  BeeCalendarVM bvm = BeeCalendarVM();
  late List<BeeCalendar> allBee;
  @override
  Widget build(BuildContext context) {
    allBee = bvm.loadAllBeePhases();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
            drawer: CusAppDrawer(),
            key: scaffoldKey,
            bottomNavigationBar: CusBottomNaviBar(
                imgBee: Image.asset("assets/images/beeBottomOn.png")),
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
                  //         const Text("مراحل تربية النحل وجني العسل",
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
                  Cust_DropdownSearch(),
                  Expanded(
                      child: GridView.builder(
                    itemCount: allBee.length,
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
                                Cust_ImageHony(),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.24,
                                  child: Text(
                                    allBee[index].phaseName.toString(),
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
                                  Cust_ImageStar(),
                                  Text(
                                    allBee[index]
                                        .stars!
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
                                  Text(allBee[index].startDate.toString(),
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
                                  Text(allBee[index].endDate.toString(),
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
                  ))
                ],
              ),
            )),
      ),
    );
  }
}
