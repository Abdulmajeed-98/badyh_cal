import 'package:badiyh_calendar/core/viewmodels/CalendarDateVM.dart';
import 'package:badiyh_calendar/core/viewmodels/season_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/star_v_m.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_BoxShadow.dart';
import 'package:badiyh_calendar/core/views/screens/testScreen/testStar.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:provider/provider.dart';

class CalendarScreen extends StatelessWidget {
  CalendarScreen({super.key});

  var scaffoldKey = GlobalKey<ScaffoldState>();
  SeasonVM sVM = SeasonVM();
  StarVM staVM = StarVM();
  List<Stars> lisStar = [];

  @override
  Widget build(BuildContext context) {
    lisStar = staVM.loadAllStars();
    Jiffy.setLocale("ar");
    HijriCalendar.setLocal("ar");
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
            drawer: CusAppDrawer(),
            key: scaffoldKey,
            bottomNavigationBar: CusBottomNaviBar(),
            body: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                // color: Colors.yellow,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      //  color: Colors.blue,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.menu,
                                size: 35,
                                color: Colors.black,
                              ),
                              onPressed: () =>
                                  scaffoldKey.currentState!.openDrawer(),
                            ),
                            Text("التقويم",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600)),
                            IconButton(
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 25,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  print("${lisStar[0].starName}");
                                  // print("${staVM.load()}");
                                  // staVM.getStar(cT)
                                  // sVM.getSeason();
                                  // print(sVM.getSeason(calendarDateVM));
                                  // print("${_selectedDate}");
                                }),
                          ]),
                    ),
                    //This Need Provider
                    Consumer<CalendarDateVM>(builder: (ctx, cT, child) {
                      return Cust_BoxShadow(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          cT.previousDay();
                                        },
                                        icon: Icon(Icons.arrow_back_ios)),
                                    IconButton(
                                        onPressed: () {
                                          //  print("${staVM.getStar(cT)}");
                                        },
                                        icon: Icon(Icons.app_blocking)),
                                  ]),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("${cT.selectedDate.day}",
                                      style: TextStyle(
                                          fontSize: 96,
                                          color: Color.fromRGBO(8, 164, 34, 1),
                                          fontWeight: FontWeight.w700)),
                                  Text(
                                      "${Jiffy.parse(cT.selectedDate.toString()).MMMM}",
                                      style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.w400)),
                                  Text("${cT.selectedDate.year}",
                                      style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.w400)),
                                  /////////////////////
                                  Row(
                                    children: [
                                      Text("${cT.hijriDate.hDay}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400)),
                                      SizedBox(width: 10),
                                      Text("${cT.hijriDate.longMonthName}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400)),
                                      SizedBox(width: 10),
                                      Text("${cT.hijriDate.hYear}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.apple),
                                      SizedBox(width: 10),
                                      Text("فصل ${sVM.getSeason(cT)}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.apple),
                                      SizedBox(width: 10),
                                      Text("نجم ${staVM.getStar(cT)}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          cT.nextDay();
                                        },
                                        // _nextDay,
                                        icon: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.red,
                                        ))
                                  ]),
                            ]),
                      );
                    }),

                    SizedBox(height: 8),
                    //This Need Provider
                    Cust_BoxShadow(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      height: MediaQuery.of(context).size.height * 0.11,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(children: [
                            Icon(Icons.beenhere),
                            SizedBox(width: 8),
                            Text("data",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400))
                          ]),
                          Row(children: [
                            Icon(Icons.beenhere),
                            SizedBox(width: 8),
                            Text("data",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500))
                          ])
                        ],
                      ),
                    ),
                    SizedBox(height: 32),
                    Row(children: [
                      Icon(Icons.apple),
                      SizedBox(width: 8),
                      Text("محاصيل الشهر",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500))
                    ]),
                    //This Need Provider...
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                      alignment: Alignment.bottomRight,
                      child: Column(
                        children: [
                          Text(
                              "هذا النص قابل للإستبدال هذا النص قابل للإستبدال",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500)),
                          Text(
                              "هذا النص قابل للإستبدال هذا النص قابل للإستبدال",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500)),
                          Text(
                              "هذا النص قابل للإستبدال هذا النص قابل للإستبدال",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500)),
                          Text(
                              "هذا النص قابل للإستبدال هذا النص قابل للإستبدال",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500)),
                          Text(
                              "هذا النص قابل للإستبدال هذا النص قابل للإستبدال",
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w500)),
                          Text(
                              "هذا النص قابل للإستبدال هذا النص قابل للإستبدال",
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w500)),
                          Text(
                              "هذا النص قابل للإستبدال هذا النص قابل للإستبدال",
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Cust_BoxShadow(
                          height: 100,
                          alignmen: Alignment.center,
                          // width: 150,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.apple),
                                Text(
                                  "النجوم",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(8, 164, 34, 1)),
                                ),
                              ]),
                        )),
                        SizedBox(width: 40),
                        Expanded(
                          child: Cust_BoxShadow(
                            height: 100,
                            // width: 150,
                            alignmen: Alignment.center,

                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.apple),
                                  Text(
                                    "المحاصيل",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(8, 164, 34, 1)),
                                  ),
                                ]),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
