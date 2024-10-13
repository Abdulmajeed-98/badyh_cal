import 'package:flutter/material.dart';

class Cust_DropdownSearch extends StatelessWidget {
  Cust_DropdownSearch({super.key});

  List<DropdownMenuItem<dynamic>> list = [
    const DropdownMenuItem(child: Text("data"))
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
              width: 1, color: const Color.fromRGBO(221, 221, 221, 1))),
      child: DropdownButtonFormField(
          isExpanded: true,
          elevation: 5,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(147, 147, 147, 1)),
          items: list,
          onChanged: (c) {}),
    );
  }
}
