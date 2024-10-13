import 'package:flutter/material.dart';

class Cust_DropDown extends StatelessWidget {
  const Cust_DropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      validator: (value) {},
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      ),
      items: [
        DropdownMenuItem(
          child: Text('استفسار'),
          value: 'استفسار',
        ),
        DropdownMenuItem(
          child: Text('شكوى'),
          value: 'شكوى',
        ),
        DropdownMenuItem(
          child: Text('اقتراح'),
          value: 'اقتراح',
        ),
      ],
      onChanged: (value) {},
      hint: Text('اختر تصنيفًا'),
    );
  }
}
