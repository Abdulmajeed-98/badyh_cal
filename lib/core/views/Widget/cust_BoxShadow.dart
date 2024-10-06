import 'package:flutter/material.dart';

class Cust_BoxShadow extends StatelessWidget {
  Cust_BoxShadow(
      {super.key,
      this.child,
      this.height,
      this.padding,
      this.width,
      this.alignmen,
      this.begin,
      this.end,
      this.colors,this.borderRadius});
  Widget? child;
  EdgeInsetsGeometry? padding;
  double? height, width;
  AlignmentGeometry? alignmen, begin, end;
  List<Color>? colors = [];
  BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignmen ?? Alignment.centerRight,
      child: child,
      padding: padding ?? EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      height: height ?? MediaQuery.of(context).size.height * 0.26,
      width: width ?? MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin ?? Alignment.centerLeft,
          end: end ?? Alignment.centerRight,
          colors: colors ??
              [
                Color.fromRGBO(255, 255, 255, 1),
                Color.fromRGBO(227, 226, 226, 1)
              ],
        ),
        borderRadius:borderRadius?? BorderRadius.circular(2.5),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.15),
              offset: Offset(0, 3),
              blurRadius: 5)
        ],
      ),
    );
  }
}
