import 'package:flutter/material.dart';

class Cust_IconBee extends StatelessWidget {
  Cust_IconBee({super.key});
  Color? color;
  double? size;
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.apple,
      size: size ?? 30,
      color: color ?? Colors.yellow,
    );
  }
}
