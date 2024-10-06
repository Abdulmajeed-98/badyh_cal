import 'package:flutter/material.dart';

class CusButton extends StatelessWidget {
  CusButton({super.key, required this.onTap, this.txt,this.h,this.v});
  void Function()? onTap;
  String? txt;
  double? h,v;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: h??28,vertical: v??6),
        decoration: BoxDecoration(
          color: Color.fromRGBO(34, 34, 39, 1),
          borderRadius: BorderRadius.circular(2.5),
        ),

        child: Text(txt??'المزيد',style: TextStyle(color: Colors.white,fontFamily: 'Tajawal'),),
      ),
    );
    
    // MaterialButton(  
    //   splashColor:  Color.fromRGBO(9, 162, 35, 1),
    //   onPressed: onPressed,
    //   textColor: Colors.white,
    //   color: Color.fromRGBO(34, 34, 39, 1),
    //   highlightColor:  Color.fromRGBO(9, 162, 35, 1),
    //   child: Text(txt ?? 'المزيد'),
    // );
  }
}
