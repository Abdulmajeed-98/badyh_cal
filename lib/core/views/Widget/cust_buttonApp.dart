import 'package:flutter/material.dart';

class Cust_ButtonApp extends StatelessWidget {
  Cust_ButtonApp(
      {super.key,
      required this.onTap,
      this.height,
      this.padding,
      this.width,
      this.alignmen,
      this.begin,
      this.end,
      this.colors,
      this.borderRadius,
      this.txt,
      this.chd,
      this.chd2});
  EdgeInsetsGeometry? padding;
  double? height, width;
  String? txt;
  AlignmentGeometry? alignmen, begin, end;
  List<Color>? colors;
  BorderRadiusGeometry? borderRadius;
  void Function()? onTap;
  Widget? chd, chd2;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
            borderRadius: borderRadius ?? BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  offset: Offset(0, 3),
                  blurRadius: 5)
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              chd ?? Container(),
              Text(txt ?? "إرسال", style: TextStyle(color: Colors.white)),
              chd2 ?? Container(),
            ],
          )),
    );
  }
}
