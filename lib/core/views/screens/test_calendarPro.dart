import 'package:badiyh_calendar/core/views/Widget/cust_BoxShadow.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:hijri/hijri_calendar.dart';

class TestCalendarPro extends StatefulWidget {
  TestCalendarPro({super.key});

  @override
  State<TestCalendarPro> createState() => _TestCalendarProState();
}

class _TestCalendarProState extends State<TestCalendarPro> {
  DateTime _selectedDate = DateTime.now();
  // DatetimeHijri dateHij = DatetimeHijri();

  HijriCalendar get _hijriDate {
    return HijriCalendar.fromDate(_selectedDate);
  }

  //////
  void _previousDay() {
    setState(() {
      _selectedDate = _selectedDate.subtract(Duration(days: 1));
    });
  }

  void _nextDay() {
    setState(() {
      _selectedDate = _selectedDate.add(Duration(days: 1));
    });
  }

  changeSetLoca() async {
    await Jiffy.setLocale("ar");
  }

  @override
  void initState() {
    changeSetLoca();
    super.initState();
  }

  ifDateBetween() {}

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
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
                padding: EdgeInsets.symmetric(horizontal: 13),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                // color: Colors.yellow,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      //  color: Colors.blue,

                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 0),
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
                                  print("${_selectedDate}");
                                }),
                          ]),
                    ),
                    Cust_BoxShadow(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: _previousDay,
                                      icon: Icon(Icons.arrow_back_ios))
                                ]),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${_selectedDate.day}",
                                    style: TextStyle(
                                        fontSize: 96,
                                        color: Color.fromRGBO(8, 164, 34, 1),
                                        fontWeight: FontWeight.w700)),
                                Text(
                                    "${Jiffy.parse(_selectedDate.toString()).MMMM}",
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w400)),
                                Text("${_selectedDate.year}",
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w400)),
                                /////////////////////
                                Row(
                                  children: [
                                    Text("${_hijriDate.hDay}",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(width: 10),
                                    Text("${_hijriDate.longMonthName}",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(width: 10),
                                    Text("${_hijriDate.hYear}",
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
                                    Text("فصل الخريف",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.apple),
                                    SizedBox(width: 10),
                                    Text("نجم الدلو",
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
                                      onPressed: _nextDay,
                                      icon: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.red,
                                      ))
                                ]),
                          ]),
                    ),
                    SizedBox(height: 8),
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
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
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
