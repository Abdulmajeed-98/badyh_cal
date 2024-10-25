import 'package:flutter/material.dart';

class Cust_ImgBox extends StatelessWidget {
  Cust_ImgBox({super.key, required this.url, this.padding, this.color});
  String url;
  EdgeInsetsGeometry? padding;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.01),
      child: Image.asset(
        url,
        color: color,
      ),
    );
  }
}
