import 'package:flutter/material.dart';

class Cust_ImgcallGreen extends StatelessWidget {
  const Cust_ImgcallGreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02),
      child: Image.asset("assets/images/LocaGreen.png"),
    );
  }
}
