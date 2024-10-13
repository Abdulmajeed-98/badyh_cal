import 'package:flutter/material.dart';

class Cust_ImageBee extends StatelessWidget {
  const Cust_ImageBee({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.01),
      child: Image.asset("assets/images/BeeIcon.png"),
    );
  }
}
