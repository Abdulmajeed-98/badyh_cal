import 'package:badiyh_calendar/core/model/months.dart';
import 'package:badiyh_calendar/core/viewmodels/CalendarDateVM.dart';
import 'package:badiyh_calendar/core/viewmodels/month_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/season_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/star_v_m.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_BoxShadow.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_imageHony.dart';
import 'package:badiyh_calendar/core/views/screens/testScreen/testStar.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intlDate;
import 'package:jiffy/jiffy.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:provider/provider.dart';
import '../../model/stars.dart';

class CalendarScreen extends StatelessWidget {
  CalendarScreen({super.key});

  var scaffoldKey = GlobalKey<ScaffoldState>();
  SeasonVM sVM = SeasonVM();
  StarVM staVM = StarVM();
  MonthVM mvm = MonthVM();
  int monthnum = 0;
  List<Stars> lisStar = [];
  List<Months> allmonths = [];
  @override
  Widget build(BuildContext context) {
    allmonths = mvm.loadAllMonths();
    lisStar = staVM.loadAllStars();
    // Jiffy.setLocale("ar");
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
                margin: EdgeInsets.only(bottom: 20),
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                // color: Colors.yellow,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      //  color: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 0),
                      margin: const EdgeInsets.only(bottom: 1),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.menu,
                                size: 30,
                                color: Colors.black,
                              ),
                              onPressed: () =>
                                  scaffoldKey.currentState!.openDrawer(),
                            ),
                            const Text("التقويم",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                            IconButton(
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  // print("${lisStar[0].starName}");
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
                        padding: EdgeInsets.only(
                            top: 5, bottom: 5, left: 3, right: 5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // color: Colors.green,
                                child: InkWell(
                                    onTap: () {
                                      cT.previousDay();
                                      print(
                                          "${lisStar[staVM.getStar(cT.selectedDate)].starName}");
                                    },
                                    child: Icon(Icons.arrow_back_ios)),
                              ),
                              Container(
                                // color: Colors.yellow,
                                //التقويم
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("${cT.selectedDate.day}",
                                        style: const TextStyle(
                                            fontSize: 70,
                                            color:
                                                Color.fromRGBO(8, 164, 34, 1),
                                            fontWeight: FontWeight.w700)),
                                    Text(
                                        // "${DateFormat.MMMM('ar').format(cT.selectedDate)}",
                                        Jiffy.parse(cT.selectedDate.toString())
                                            .MMMM,
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
                                          Icon(Icons.apple),
                                          SizedBox(height: 10),
                                          Text("فصل ${sVM.getSeason(cT)}",
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500)),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 3),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.apple),
                                        const SizedBox(height: 10),
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
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.red,
                                ),
                              ),
                            ]),
                      );
                    }),

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
                                Icon(Icons.beenhere),
                                SizedBox(width: 8),
                                Text("مراحل تربية النحل وجني العسل",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400))
                              ]),
                          Cust_ImageHony(),
                          Text("افضل...",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500)),
                          InkWell(
                              onTap: () => Navigator.pushNamed(context, "/bee"),
                              child: Text("مشاهدة باقي المراحل",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400)))
                        ],
                      ),
                    ),

                    const SizedBox(height: 32),
                    const Row(children: [
                      Icon(Icons.apple),
                      SizedBox(width: 8),
                      Text("محاصيل الشهر",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500))
                    ]),
                    //This Need Provider...
                    Consumer<CalendarDateVM>(builder: (ctx, cT, child) {
                      monthnum = cT.selectedDate.month;
                      return Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 32),
                        alignment: Alignment.bottomRight,
                        child: Column(
                          children: [
                            Text("${allmonths[monthnum - 1].crops}",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                          ],
                        ),
                      );
                    }),
                    Row(
                      children: [
                        Expanded(
                            child: Cust_BoxShadow(
                          height: 100,
                          alignmen: Alignment.center,
                          // width: 150,
                          child: const Column(
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
                        // const SizedBox(width: 40),

                        // Expanded(
                        //   child:
                        //   Cust_BoxShadow(
                        //     height: 100,
                        //     // width: 150,
                        //     alignmen: Alignment.center,
                        //     child: const Column(
                        //         mainAxisAlignment:
                        //             MainAxisAlignment.spaceAround,
                        //         children: [
                        //           Icon(Icons.apple),
                        //           Text(
                        //             "المحاصيل",
                        //             style: TextStyle(
                        //                 fontSize: 16,
                        //                 fontWeight: FontWeight.w500,
                        //                 color: Color.fromRGBO(8, 164, 34, 1)),
                        //           ),
                        //         ]),
                        //   ),
                        // )
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
