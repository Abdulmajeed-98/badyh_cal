import 'package:flutter/material.dart';

class Cust_ImageStar extends StatelessWidget {
  const Cust_ImageStar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02),
      child: Image.asset("assets/images/Star.png"),
    );
  }
}
