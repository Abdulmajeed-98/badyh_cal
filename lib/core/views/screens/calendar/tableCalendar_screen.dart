import 'package:badiyh_calendar/core/constants/const_txt.dart';
import 'package:badiyh_calendar/core/constants/const_urls_img.dart';
import 'package:badiyh_calendar/core/viewmodels/CalendarDateVM.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_BoxShadow.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_boxImg.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_buttonApp.dart';
import 'package:badiyh_calendar/core/views/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarScreen extends StatelessWidget {
  TableCalendarScreen({super.key});

  CalendarDateVM sel = CalendarDateVM();
  DateTime today = DateTime.now().toUtc().add(Duration(hours: 1));
  Const_Txt txt = Const_Txt();
  const_urls_img url = const_urls_img();
  // void onDaySelected(DateTime day, DateTime focusDay) {
  //   today = day;
  // }
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // Jiffy.setLocale("ar");
    return Directionality(
        textDirection: TextDirection.ltr,
        child: SafeArea(
            child: Scaffold(
                backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                drawer: AppDrawer(),
                key: scaffoldKey,
                body: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 0),
                                margin: const EdgeInsets.only(bottom: 1),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                          icon: SizedBox(
                                              height: 18,
                                              child: Cust_ImgBox(
                                                url: url.back,
                                                color: Color.fromRGBO(
                                                    68, 68, 68, 1),
                                              )),
                                          onPressed: () =>
                                              Navigator.pop(context)),
                                      Text(txt.cal,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                      IconButton(
                                        icon: Cust_ImgBox(
                                            url: url.drawer,
                                            color:
                                                Color.fromRGBO(34, 34, 39, 1)),
                                        onPressed: () => scaffoldKey
                                            .currentState!
                                            .openDrawer(),
                                      ),
                                    ]),
                              ),
                              ////////////////////
                              Consumer<CalendarDateVM>(
                                  builder: (ctx, ta, child) {
                                return Column(
                                  children: [
                                    Container(
                                        child: Cust_BoxShadow(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.49,
                                      child: TableCalendar(
                                          // daysOfWeekStyle: DaysOfWeekStyle(
                                          //   weekendStyle:
                                          //       TextStyle(color: Colors.red),
                                          // ),
                                          calendarBuilders: CalendarBuilders(
                                              // headerTitleBuilder:
                                              //     (context, day) => Center(
                                              //           child: Text(
                                              //               "${ta.selectedDate.year} ${ta.monthNameAR}"),
                                              //         ),
                                              todayBuilder: (context, day, focusedDay) =>
                                                  Center(
                                                      child: CircleAvatar(
                                                          backgroundColor:
                                                              const Color.fromARGB(
                                                                  131, 9, 162, 35),
                                                          radius: 15,
                                                          child: Text(
                                                            "${today.day}",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ))),
                                              selectedBuilder: (context, day,
                                                      focusedDay) =>
                                                  Center(
                                                      child: CircleAvatar(
                                                          backgroundColor:
                                                              const Color.fromRGBO(
                                                                  9, 162, 35, 1),
                                                          radius: 15,
                                                          child: Text(
                                                            "${ta.selectedDate.day}",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          )))
                                              // todayBuilder:
                                              // (context, day, focusedDay) =>
                                              //     Text("1"),
                                              // markerBuilder: (context, day,
                                              //         events) =>
                                              //     Text("${ta.hijriDate.hDay}")
                                              // defaultBuilder:
                                              //     (context, day, focusedDay) =>
                                              //         Text("data"),
                                              ),
                                          onDayLongPressed:
                                              (selectedDay, focusedDay) {
                                            Navigator.pop(context);
                                          },
                                          onDaySelected: ta.onDaySelected,
                                          rowHeight: 35,
                                          availableGestures:
                                              AvailableGestures.all,
                                          selectedDayPredicate: (day) =>
                                              isSameDay(day, ta.selectedDate),
                                          headerStyle: HeaderStyle(
                                              formatButtonVisible: false,
                                              titleCentered: true),
                                          focusedDay: ta.selectedDate,
                                          startingDayOfWeek: StartingDayOfWeek.saturday,
                                          firstDay: DateTime.utc(2000, 1, 1),
                                          lastDay: DateTime.utc(2030, 1, 1)),
                                    )),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Cust_ButtonApp(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            onTap: () {
                                              Navigator.pop(context);
                                              ta.toDay();
                                            },
                                            txt: txt.toDay),
                                        Cust_ButtonApp(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            txt: txt.daySelect),
                                      ],
                                    )
                                  ],
                                );
                              }),
                            ]))))));
  }
}
