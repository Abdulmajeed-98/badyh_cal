import 'package:flutter/material.dart';

class CusBottomNaviBar extends StatelessWidget {
  CusBottomNaviBar(
      {super.key, this.imgHome, this.imgBee, this.imgNews, this.imgCal});
  Widget? imgHome, imgBee, imgNews, imgCal;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.081,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 21, 21, 21),
        Color.fromARGB(255, 15, 15, 15)
      ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => Navigator.pushReplacementNamed(context, "/home"),
            icon: SizedBox(
              height: 20,
              width: 20,
              child: imgHome ??
                  Image.asset(
                    "assets/images/homeBottomOff.png",
                  ),
            ),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () => Navigator.pushReplacementNamed(context, "/news"),
            icon: SizedBox(
              height: 20,
              width: 20,
              child: imgNews ??
                  Image.asset(
                    "assets/images/newsBottomOff.png",
                    fit: BoxFit.contain,
                  ),
            ),
            color: Colors.white,
          ),
          IconButton(
            iconSize: 3,
            onPressed: () => Navigator.pushReplacementNamed(context, "/bee"),
            icon: SizedBox(
              height: 20,
              width: 20,
              child: imgBee ??
                  Image.asset(
                    "assets/images/beeBottomOff.png",
                    fit: BoxFit.contain,
                  ),
            ),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/calendar");
            },
            icon: SizedBox(
              height: 20,
              width: 20,
              child: imgCal ??
                  Image.asset(
                    "assets/images/calendarBottomOff.png",
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
