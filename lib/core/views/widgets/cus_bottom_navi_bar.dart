import 'package:flutter/material.dart';

class CusBottomNaviBar extends StatelessWidget {
  CusBottomNaviBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color.fromARGB(255, 21, 21, 21),Color.fromARGB(255, 15, 15, 15)],begin: Alignment.centerLeft,end: Alignment.centerRight)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month_outlined),color: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.newspaper),color: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.curtains_closed_outlined),color: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.home_outlined),color: Colors.white,),
        ],
      ),
    );
  }
}