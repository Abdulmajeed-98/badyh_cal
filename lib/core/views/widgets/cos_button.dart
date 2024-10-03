import 'package:flutter/material.dart';

class CosButton extends StatefulWidget {
  CosButton({super.key, required this.onPressed, this.txt});
  void Function()? onPressed;
  String? txt;

  @override
  State<CosButton> createState() => _CosButtonState();
}

class _CosButtonState extends State<CosButton> {
  @override
  Color? c;
  Widget build(BuildContext context) {
      return InkWell(
        onHover: (value) {
          value? c = Colors.red:c=Colors.amber;   
        },
        autofocus: true,
        focusColor: Colors.green,
        highlightColor: Colors.green,
        hoverColor: Colors.green,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
          decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Text('data'),
        ),
      );


    // return MaterialButton(      
    //   splashColor:  Color.fromRGBO(9, 162, 35, 1),
    //   onPressed: onPressed,
    //   textColor: Colors.white,
    //   color: Color.fromRGBO(34, 34, 39, 1),
    //   highlightColor:  Color.fromRGBO(9, 162, 35, 1),
    //   child: Text(txt ?? 'المزيد'),
    // );
  }
}
