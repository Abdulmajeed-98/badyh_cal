import 'package:flutter/material.dart';

class cust_boxContact extends StatelessWidget {
  cust_boxContact(
      {super.key,
      this.child,
      this.height,
      this.width,
      this.begin,
      this.end,
      this.colors,
      this.borderRadius});
  Widget? child;
  double? height, width;
  AlignmentGeometry? begin, end;
  List<Color>? colors;
  BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 9),
      alignment: Alignment.centerRight,
      // height: height ?? MediaQuery.of(context).size.height * 0.30,
      width: width ?? MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin ?? Alignment.centerLeft,
          end: end ?? Alignment.centerRight,
          colors: colors ??
              [
                const Color.fromRGBO(68, 68, 68, 1),
                const Color.fromRGBO(0, 0, 0, 1),
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
      child: child,
    );
  }
}
