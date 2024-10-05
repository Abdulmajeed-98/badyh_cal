import 'package:badiyh_calendar/core/views/Widget/cust_BoxShadow.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_appBar.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          drawer: Drawer(),
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(60.0),
              child: Cust_Appbar(txtTitle: "التقويم")),
          body: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(18),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              //  color: Colors.yellow,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Cust_BoxShadow(),
                  SizedBox(height: 8),
                  Cust_BoxShadow(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    alignment: Alignment.bottomRight,
                    child: Column(
                      children: [
                        Text("هذا النص قابل للإستبدال هذا النص قابل للإستبدال",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        Text("هذا النص قابل للإستبدال هذا النص قابل للإستبدال",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w500)),
                        Text("هذا النص قابل للإستبدال هذا النص قابل للإستبدال",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w500)),
                        Text("هذا النص قابل للإستبدال هذا النص قابل للإستبدال",
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
                        // width: 150,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                      SizedBox(width: 10),
                      Expanded(
                        child: Cust_BoxShadow(
                          height: 100,
                          // width: 150,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
