import 'package:flutter/material.dart';

class CusGrundImg extends StatelessWidget {
  CusGrundImg({super.key,this.txt});
  String? txt;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 7,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Color.fromRGBO(102, 102, 102, 1)])),
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 7,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/badyh_complex.png'),
                  fit: BoxFit.fill,
                  opacity: 0.2)),
          child: Center(child: Text(txt??'مؤسسة البادية للتنمية والأعمال الإنسانية',style: Theme.of(context).textTheme.headlineMedium,)),
        ),
      ],
    );
  }
}
