import 'package:flutter/material.dart';

class cust_imgCrops extends StatelessWidget {
  const cust_imgCrops({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.01),
      child: Image.asset("assets/images/crops.png"),
    );
  }
}
