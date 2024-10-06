import 'package:flutter/material.dart';

class ScrachWidgets extends StatefulWidget {
  @override
  _ScrachWidgetsState createState() => _ScrachWidgetsState();
}

class _ScrachWidgetsState extends State<ScrachWidgets> {
  // Variable to keep track of the selected item
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Frame 7
          Positioned(
            left: 492,
            top: 702,
            width: 240,
            height: 802,
            child: Container(
              color: Colors.white,
            ),
          ),
          // Group 2 (Example of an item)
          Positioned(
            width: 188,
            height: 48,
            left: MediaQuery.of(context).size.width / 2 - 188 / 2 + 10,
            top: MediaQuery.of(context).size.height / 2 - 48 / 2 - 352,
            child: Container(
              color: Colors.transparent,
            ),
          ),
          // Logo
          Positioned(
            width: 48,
            height: 48,
            left: MediaQuery.of(context).size.width / 2 - 48 / 2 + 80,
            top: 25,
            child: Image.asset('assets/images/شعار-البادية-1.png'), // Assuming you have the logo as an asset
          ),
          // المؤسسة
          Positioned(
            width: 126,
            height: 28,
            left: MediaQuery.of(context).size.width / 2 - 126 / 2 - 21,
            top: 35,
            child: Text(
              'مؤسسة البادية للتنمية والأعمال الإنسانية',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Color(0xFF252525),
              ),
            ),
          ),
          // Menu items
          buildNavItem(0, 94, 'الرئيسية', 0),
          buildNavItem(0, 134, 'الرئيسية', 1),
          buildDropDownItem(0, 174, 'البرامج والمشاريع', 2),
          buildDropDownItem(0, 214, 'الأخبار', 3),
          buildDropDownItem(0, 254, 'المقالات', 4),
          buildDropDownItem(0, 294, 'التقويم الزراعي', 5),
          buildNavItem(0, 334, 'الرئيسية', 6),
          buildNavItem(0, 374, 'الرئيسية', 7),
          buildNavItem(0, 414, 'الرئيسية', 8),
          buildNavItem(0, 454, 'الرئيسية', 9),
        ],
      ),
    );
  }

  // Helper function to build a navigation item
  Positioned buildNavItem(double left, double top, String title, int index) {
    return Positioned(
      left: left,
      top: top,
      width: 240,
      height: 30,
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            color: selectedIndex == index ? Colors.grey[300] : Colors.transparent,
            border: Border(
              bottom: BorderSide(color: Color(0xFFDDDDDD), width: 1),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xFF222227),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to build a dropdown item
  Positioned buildDropDownItem(double left, double top, String title, int index) {
    return Positioned(
      left: left,
      top: top,
      width: 240,
      height: 32,
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: selectedIndex == index ? Colors.grey[300] : Colors.white,
            border: Border(
              bottom: BorderSide(color: Color(0xFFDDDDDD), width: 1),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_drop_down,
                color: Color(0xFF59595D),
              ),
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xFF222227),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
