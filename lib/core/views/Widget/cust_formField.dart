import 'package:flutter/material.dart';

class Cust_FormField extends StatelessWidget {
  Cust_FormField(
      {super.key,
      this.onChanged,
      required this.txt,
      this.validat,
      required this.txtF,
      this.max,
      this.min,
      this.autovalidateMode});
  String txt, txtF;
  int? max, min;
  String? Function(String?)? validat;
  void Function(String)? onChanged;
  AutovalidateMode? autovalidateMode;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          txt,
        ),
        TextFormField(
          autovalidateMode: autovalidateMode??AutovalidateMode.onUserInteraction,
          onChanged: onChanged,
          validator: validat ??
              (value) {
                return null;
              },
          maxLines: max,
          minLines: min,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            border: OutlineInputBorder(),
            hintText: txtF,
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
