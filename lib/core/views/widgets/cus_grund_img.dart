import 'package:flutter/material.dart';

class CusGrundImg extends StatelessWidget {
  CusGrundImg({super.key});

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
          child: Center(child: Text('data',style: TextStyle(color: Colors.white),)),
        ),
      ],
    );
  }
}
