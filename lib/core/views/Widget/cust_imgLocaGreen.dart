import 'package:flutter/material.dart';

class Cust_ImglocaGreen extends StatelessWidget {
  Cust_ImglocaGreen({super.key, this.padding});
  EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
      alignment: Alignment.centerRight,
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02),
      child: Image.asset("assets/images/LocaGreen.png"),
    );
  }
}
