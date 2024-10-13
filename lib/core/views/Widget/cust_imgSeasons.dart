import 'package:flutter/material.dart';

class Cust_ImgSeasons extends StatelessWidget {
  const Cust_ImgSeasons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02),
        child: Image.asset("assets/images/Autumn.png"));
  }
}
