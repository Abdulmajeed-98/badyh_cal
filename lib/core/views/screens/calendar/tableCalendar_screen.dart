import 'package:badiyh_calendar/core/viewmodels/CalendarDateVM.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_BoxShadow.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_appBarCalendar.dart';
import 'package:badiyh_calendar/core/views/screens/calendar/calendar_screen.dart';
import 'package:badiyh_calendar/core/views/widgets/app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarScreen extends StatelessWidget {
  TableCalendarScreen({super.key});

  CalendarDateVM sel = CalendarDateVM();
  DateTime today = DateTime.now();
  // void onDaySelected(DateTime day, DateTime focusDay) {
  //   today = day;
  // }
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // Jiffy.setLocale("ar");
    return Directionality(
        textDirection: TextDirection.rtl,
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
                              Cust_AppbarCalendar(
                                  scafKey: () =>
                                      scaffoldKey.currentState!.openDrawer(),
                                  txt: "التقويم",
                                  onPressed: () => Navigator.pop(context)
                                  // Get.offAllNamed('/calendar')
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
                                              0.43,
                                      child: TableCalendar(
                                          calendarBuilders: CalendarBuilders(
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
                                          firstDay: DateTime.utc(2020, 1, 1),
                                          lastDay: DateTime.utc(2030, 1, 1)),
                                    )),
                                    //   Text("date: " + ta.selectedDate.toString()),
                                    ElevatedButton(
                                        onPressed: () {
                                          // ta.onDaySelected(ta.selectedDate, ta.selectedDate);
                                          Navigator.pop(context);

                                          //   ta.preeeeeee;
                                          print(ta.selectedDate
                                              .toString()
                                              .split(" ")[0]);
                                        },
                                        child: Text("موافق"))
                                  ],
                                );
                              }),
                            ]))))));
  }
}
