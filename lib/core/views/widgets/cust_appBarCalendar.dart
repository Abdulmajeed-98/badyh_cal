import 'package:badiyh_calendar/core/constants/const_urls_img.dart';
import 'package:badiyh_calendar/core/views/widgets/cust_boxImg.dart';
import 'package:flutter/material.dart';

class Cust_AppbarCalendar extends StatelessWidget {
  Cust_AppbarCalendar(
      {super.key,
      required this.scafKey,
      required this.txt,
      required this.onPressed});
  String txt;
  void Function()? scafKey, onPressed;
  const_urls_img url = const_urls_img();
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      margin: const EdgeInsets.only(bottom: 1),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
            icon: Cust_ImgBox(
                url: url.drawer, color: Color.fromRGBO(34, 34, 39, 1)),
            onPressed: scafKey),
        Text(txt, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        IconButton(
            icon: SizedBox(
                height: 18,
                child: Cust_ImgBox(
                    url: url.back, color: Color.fromRGBO(68, 68, 68, 1))),
            onPressed: onPressed),
      ]),
    );
  }
}
