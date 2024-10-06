import 'package:badiyh_calendar/core/views/Widget/cust_BoxShadow.dart';
import 'package:flutter/material.dart';

class Cust_BoxEvent extends StatelessWidget {
  Cust_BoxEvent(
      {super.key,
      this.txtTitle,
      this.txtSubject,
      this.day,
      this.month,
      this.year});

  String? txtTitle, txtSubject, day, month, year;

  @override
  Widget build(BuildContext context) {
    return Cust_BoxShadow(
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
                  txtTitle ?? "برامج الخير الرمضانية",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(8, 164, 34, 1)),
                ),
                Text(
                  txtSubject ?? "اول ايام شهر رمضان",
                  style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(147, 147, 147, 1)),
                ),
              ])),
          Cust_BoxShadow(
            borderRadius: BorderRadius.circular(0),
            alignmen: Alignment.center,
            padding: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width * 0.12,
            height: MediaQuery.of(context).size.width * 0.19, //60,
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
                  day ?? "11",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  month ?? "مارس",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  year ?? "2024",
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
    );
  }
}
