import 'package:flutter/material.dart';

class CusDrawerIcon extends StatelessWidget {
  CusDrawerIcon({super.key, required this.onPressed});
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () {},
      ),
    );
  }
}
