import 'package:flutter/material.dart';

class Cust_Listtile extends StatelessWidget {
  Cust_Listtile(
      {super.key, required this.icon, required this.text, this.onTap});

  IconData icon;
  String text;
  GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.green[500]),
      title: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      onTap: onTap,
    );
  }
}
