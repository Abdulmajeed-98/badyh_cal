import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CusBackButton extends StatelessWidget {
  CusBackButton({super.key, this.color});
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      // top: 5,
      child: InkWell(
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          color: color ?? Colors.white,
          size: 20,
        ),
        onTap: () {
          Get.offNamed('/home');
        },
      ),
    );
  }
}
