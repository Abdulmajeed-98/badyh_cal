import 'package:flutter/material.dart';

class CusBackButton extends StatelessWidget {
  CusBackButton({
    super.key,this.color
  });
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      
      left: 0,
      // top: 5,
      child: IconButton(
        icon: Icon(
          Icons.arrow_forward_ios_rounded,
          color: color??Colors.white,
          size: 20,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}