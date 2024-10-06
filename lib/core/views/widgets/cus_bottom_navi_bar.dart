import 'package:flutter/material.dart';

class CusBottomNaviBar extends StatelessWidget {
  CusBottomNaviBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.081,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 21, 21, 21),
        Color.fromARGB(255, 15, 15, 15)
      ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset(
                "assets/images/home.png",
              ),
            ),
            color: Colors.white,
          ),
          IconButton(
            iconSize: 3,
            onPressed: () {},
            icon: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset(
                "assets/images/bee.png",
                fit: BoxFit.contain,
              ),
            ),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset(
                "assets/images/news.png",
                fit: BoxFit.contain,
              ),
            ),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset(
                "assets/images/calendar.png",
                fit: BoxFit.contain,
              ),
            ),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
