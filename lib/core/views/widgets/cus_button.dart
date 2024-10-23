import 'package:flutter/material.dart';

class CusButton extends StatelessWidget {
  CusButton(
      {super.key, required this.onTap, this.txt, this.h, this.v, this.margin});
  void Function()? onTap;
  String? txt;
  double? h, v;
  EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: margin,
        padding: EdgeInsets.symmetric(horizontal: h ?? 28, vertical: v ?? 6),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(34, 34, 39, 1),
          borderRadius: BorderRadius.circular(2.5),
        ),
        child: Text(
          textAlign: TextAlign.center,
          txt ?? 'المزيد',
          style: const TextStyle(color: Colors.white, fontFamily: 'Tajawal'),
        ),
      ),
    );
  }
}
