import 'package:badiyh_calendar/core/views/widgets/cos_app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cos_button.dart';
import 'package:badiyh_calendar/core/views/widgets/cos_button_two.dart';
import 'package:flutter/material.dart';

class TestWidgets extends StatefulWidget {
  const TestWidgets({super.key});

  @override
  State<TestWidgets> createState() => _TestWidgetsState();
}

class _TestWidgetsState extends State<TestWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CosAppDrawer(),
      body: Center(child: Column(
        children: [
          CosButton(onPressed: (){}),
          CosButtonTwo(onPressed: (){})
        ],
      ),),
    );
  }
}