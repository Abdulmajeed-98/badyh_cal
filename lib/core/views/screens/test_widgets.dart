import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_stack.dart';
import 'package:flutter/material.dart';

class TestWidgets extends StatelessWidget {
  const TestWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CusBottomNaviBar(),
      body: Center(
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: List.generate(5, (index) => CusStack(),),
        ),
      ),
    );
  }
}