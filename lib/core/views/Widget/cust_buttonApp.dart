import 'package:flutter/material.dart';

class Cust_ButtonApp extends StatelessWidget {
  Cust_ButtonApp(
      {super.key,
      this.height,
      this.padding,
      this.width,
      this.alignmen,
      this.begin,
      this.end,
      this.colors,
      this.borderRadius,
      this.txt});
  EdgeInsetsGeometry? padding;
  double? height, width;
  String? txt;
  AlignmentGeometry? alignmen, begin, end;
  List<Color>? colors;
  BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: alignmen ?? Alignment.center,
        padding:
            padding ?? const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
        // height: height ?? MediaQuery.of(context).size.height * 0.30,
        width: width ?? MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: begin ?? Alignment.centerLeft,
            end: end ?? Alignment.centerRight,
            colors: colors ??
                [
                  const Color.fromRGBO(0, 0, 0, 1),
                  const Color.fromRGBO(34, 34, 39, 1)
                ],
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(2.5),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.15),
                offset: Offset(0, 3),
                blurRadius: 5)
          ],
        ),
        child: Text(txt ?? "إرسال", style: TextStyle(color: Colors.white)));
  }
}
