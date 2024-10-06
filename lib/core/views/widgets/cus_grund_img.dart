import 'package:flutter/material.dart';

class CusGrundImg extends StatelessWidget {
  CusGrundImg({super.key, this.txt, this.style,this.margin});
  TextStyle? style;
  String? txt;
  EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? null,
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 7,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Color.fromRGBO(102, 102, 102, 1)]),
          image: DecorationImage(
              image: AssetImage('assets/images/badyh_complex.png'),
              fit: BoxFit.fill,
              opacity: 0.2)),
      child: Center(
          child: Text(
        txt ?? 'data',
        style: style ?? TextStyle(color: Colors.white),
      )),
    );
  }
}
