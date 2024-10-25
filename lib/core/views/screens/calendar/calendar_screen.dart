import 'package:badiyh_calendar/core/constants/const_txt.dart';
import 'package:badiyh_calendar/core/constants/const_urls_img.dart';
import 'package:badiyh_calendar/core/model/bee_calendar.dart';
import 'package:badiyh_calendar/core/model/months.dart';
import 'package:badiyh_calendar/core/viewmodels/CalendarDateVM.dart';
import 'package:badiyh_calendar/core/viewmodels/bee_calendar_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/month_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/season_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/star_v_m.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_BoxShadow.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_appBarCalendar.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_boxImg.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_buttonApp.dart';
import 'package:badiyh_calendar/core/views/widgets/app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:intl/intl.dart' as intlDate;
// import 'package:jiffy/jiffy.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:provider/provider.dart';
import '../../../model/stars.dart';

class CalendarScreen extends StatelessWidget {
  CalendarScreen({super.key});

  StarVM staVM = StarVM();
  MonthVM mvm = MonthVM();
  BeeCalendarVM bvm = BeeCalendarVM();
  SeasonVM sVM = SeasonVM();
  Const_Txt txt = Const_Txt();
  const_urls_img url = const_urls_img();
  int monthnum = 0;
  List<Stars> lisStar = [];
  List<Months> allmonths = [];
  late List<BeeCalendar> allBee;
  late bool isToday;

  CalendarDateVM sel = CalendarDateVM();
  // DateTime today = DateTime.now();
  // DateTime? select;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    allBee = bvm.loadAllBeePhases();
    allmonths = mvm.loadAllMonths();
    lisStar = staVM.loadAllStars();

    // Jiffy.setLocale("ar");
    HijriCalendar.setLocal("ar");
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            drawer: AppDrawer(),
            key: scaffoldKey,
            bottomNavigationBar: CusBottomNaviBar(
              imgCal: Image.asset(url.calOn),
            ),
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Container(
                    //   alignment: Alignment.center,
                    //   padding: const EdgeInsets.symmetric(
                    //       vertical: 5, horizontal: 0),
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
                    //         const Text("التقويم",
                    //             style: TextStyle(
                    //                 fontSize: 18,
                    //                 fontWeight: FontWeight.w600)),
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
                        txt: txt.cal,
                        onPressed: () => Get.offAllNamed('/home')),
                    //This Need Provider
                    Consumer<CalendarDateVM>(builder: (ctx, cT, child) {
                      // select = cT.selectedDate;
                      // isToday =
                      //     select!.isAfter(today) || select!.isBefore(today);
                      return Cust_BoxShadow(
                        padding: EdgeInsets.only(
                            top: 5, bottom: 5, left: 3, right: 5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: InkWell(
                                  onTap: () {
                                    cT.previousDay();
                                    // print(
                                    //     "${lisStar[staVM.getStar(cT.selectedDate)].starName}");
                                  },
                                  child: SizedBox(
                                      height: 20,
                                      child: Cust_ImgBox(
                                          url: url.next,
                                          color:
                                              Color.fromRGBO(68, 68, 68, 1))),
                                ),
                              ),
                              Container(
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("${cT.selectedDate.day}",
                                        style: TextStyle(
                                            fontSize: 80,
                                            color: cT.isToday()
                                                ? Color.fromRGBO(8, 164, 34, 1)
                                                : Colors.grey,
                                            fontWeight: FontWeight.w700)),
                                    Text("${cT.monthNameAR}",
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400)),
                                    Text("${cT.selectedDate.year}",
                                        style: const TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w400)),
                                    /////////////////////
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("${cT.hijriDate.hDay}",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400)),
                                        const SizedBox(width: 5),
                                        Text(cT.hijriDate.longMonthName,
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400)),
                                        const SizedBox(width: 5),
                                        Text("${cT.hijriDate.hYear}",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 120,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  //stars & season
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      // color: Colors.blue,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Cust_ImgBox(
                                              url: "${sVM.getSeasonImg(cT)}"),
                                          SizedBox(width: 2),
                                          Text(
                                              "${txt.season} ${sVM.getSeason(cT)}",
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500)),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Cust_ImgBox(url: url.star),
                                        SizedBox(width: 2),
                                        Text(
                                            "${lisStar[staVM.getStar(cT.selectedDate)].starName}",
                                            //${staVM.getHoliday(cT)}
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              // Spacer(),
                              InkWell(
                                onTap: () {
                                  cT.nextDay();
                                  print(
                                      "${lisStar[staVM.getStar(cT.selectedDate)].starName}");
                                },
                                child: SizedBox(
                                    height: 20,
                                    child: Cust_ImgBox(
                                        url: url.back,
                                        color: Color.fromRGBO(68, 68, 68, 1))),
                              ),
                            ]),
                      );
                    }),
                    // Cust_BoxCalendarMain(),
                    const SizedBox(height: 8),
                    //This Need Provider
                    Cust_BoxShadow(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Cust_ImgBox(url: url.bee),
                                Text(txt.beesPhase,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500))
                              ]),
                          Cust_ImgBox(url: url.hony),
                          Consumer<CalendarDateVM>(builder: (ctx, bee, child) {
                            return Text(bvm.getBeePhase(bee).toString(),
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500));
                          }),
                          InkWell(
                              onTap: () => Get.toNamed("/bee"),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Text(txt.phaseShow,
                                    style: TextStyle(
                                        // color: Colors.blue,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Cust_ButtonApp(
                        chd: SizedBox(
                            height: 16,
                            width: 16,
                            child: Image.asset(url.homeOff)),
                        width: MediaQuery.of(context).size.width * 0.4,
                        onTap: () => Navigator.pushNamed(context, "/table"),
                        txt: txt.phaseCal),
                    ////////////////////
                    SizedBox(height: 20),
                    Row(children: [
                      Cust_ImgBox(url: url.crops),
                      Text(txt.crops,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500))
                    ]),
                    //This Need Provider...
                    Consumer<CalendarDateVM>(builder: (ctx, cT, child) {
                      monthnum = cT.selectedDate.month;
                      return Container(
                        height: 150,
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 32),
                        alignment: Alignment.bottomRight,
                        child: Column(
                          children: [
                            Text("${allmonths[monthnum - 1].crops}",
                                maxLines: 7,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                          ],
                        ),
                      );
                    }),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () => Get.toNamed("/star"),
                            child: Cust_BoxShadow(
                              height: MediaQuery.of(context).size.height *
                                  0.12, //100,
                              alignmen: Alignment.center,
                              width: MediaQuery.of(context).size.width *
                                  0.33, //150,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Cust_ImgBox(url: url.star),
                                    Text(
                                      txt.stars,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(8, 164, 34, 1)),
                                    ),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
