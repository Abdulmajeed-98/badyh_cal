import 'package:flutter/material.dart';

class CusDrawerIcon extends StatelessWidget {
  CusDrawerIcon({super.key});
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () => scaffoldKey.currentState!.openDrawer(),
      ),
    );
  }
}
