import 'package:badiyh_calendar/core/views/Widget/cust_BoxShadow.dart';
import 'package:badiyh_calendar/core/views/Widget/cust_appBar.dart';
import 'package:flutter/material.dart';

class EventsBadyhScreen extends StatelessWidget {
  const EventsBadyhScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          drawer: Drawer(),
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(60.0),
              child: Cust_Appbar(txtTitle: "مناسبات البادية")),
          body: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(14),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              //  color: Colors.yellow,
              child: Wrap(
                runSpacing: 16,
                spacing: MediaQuery.of(context).size.width * 0.03,
                children: [
                  Cust_BoxShadow(
                    padding: EdgeInsets.only(left: 9, right: 9),
                    height: MediaQuery.of(context).size.height * 0.109,
                    width: MediaQuery.of(context).size.width * 0.445,
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(255, 255, 255, 1),
                      Color.fromRGBO(238, 238, 238, 1)
                    ],
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text(
                                "برامج الخير الرمضانية",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(8, 164, 34, 1)),
                              ),
                              Text(
                                "اول ايام شهر رمضان",
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(147, 147, 147, 1)),
                              ),
                            ])),
                        Cust_BoxShadow(
                          alignmen: Alignment.center,
                          padding: EdgeInsets.all(5),
                          width: MediaQuery.of(context).size.width * 0.111,
                          height:
                              57, //MediaQuery.of(context).size.width * 0.144,
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(9, 162, 35, 1),
                            Color.fromRGBO(112, 187, 65, 1)
                          ],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "11",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                "مارس",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                "2024",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Cust_BoxShadow(
                    padding: EdgeInsets.only(left: 9, right: 9),
                    height: MediaQuery.of(context).size.height * 0.109,
                    width: MediaQuery.of(context).size.width * 0.445,
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(255, 255, 255, 1),
                      Color.fromRGBO(238, 238, 238, 1)
                    ],
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text(
                                "برامج الخير الرمضانية",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(8, 164, 34, 1)),
                              ),
                              Text(
                                "اول ايام شهر رمضان",
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(147, 147, 147, 1)),
                              ),
                            ])),
                        Cust_BoxShadow(
                          alignmen: Alignment.center,
                          padding: EdgeInsets.all(5),
                          width: MediaQuery.of(context).size.width * 0.111,
                          height:
                              57, //MediaQuery.of(context).size.width * 0.144,
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(9, 162, 35, 1),
                            Color.fromRGBO(112, 187, 65, 1)
                          ],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "11",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                "مارس",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                "2024",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Cust_BoxShadow(
                    padding: EdgeInsets.only(left: 9, right: 9),
                    height: MediaQuery.of(context).size.height * 0.109,
                    width: MediaQuery.of(context).size.width * 0.445,
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(255, 255, 255, 1),
                      Color.fromRGBO(238, 238, 238, 1)
                    ],
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text(
                                "برامج الخير الرمضانية",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(8, 164, 34, 1)),
                              ),
                              Text(
                                "اول ايام شهر رمضان",
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(147, 147, 147, 1)),
                              ),
                            ])),
                        Cust_BoxShadow(
                          alignmen: Alignment.center,
                          padding: EdgeInsets.all(5),
                          width: MediaQuery.of(context).size.width * 0.111,
                          height:
                              57, //MediaQuery.of(context).size.width * 0.144,
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(9, 162, 35, 1),
                            Color.fromRGBO(112, 187, 65, 1)
                          ],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "11",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                "مارس",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                "2024",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
