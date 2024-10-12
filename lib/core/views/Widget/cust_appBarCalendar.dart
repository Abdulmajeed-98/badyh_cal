import 'package:flutter/material.dart';

class Cust_AppbarCalendar extends StatelessWidget {
  Cust_AppbarCalendar(
      {super.key, required this.scaffoldKey, required this.txt});
  String txt;
  void Function()? scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      margin: const EdgeInsets.only(bottom: 1),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
            icon: const Icon(
              Icons.menu,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () => scaffoldKey),
        Text(txt, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        IconButton(
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () {}),
      ]),
    );
  }
}
