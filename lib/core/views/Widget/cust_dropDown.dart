import 'package:flutter/material.dart';

class Cust_DropDown extends StatelessWidget {
  Cust_DropDown({super.key,required this.onChanged});
  void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      validator: (value) {
        if (value == null) {
          return "يجب تعبئة هذا الحقل";
        }
        return null;
      },
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
      onChanged: onChanged,
      hint: Text('اختر تصنيفًا'),
    );
  }
}
