import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: Text("drawer")),
        drawer: Drawer(),
        body: Container(
          child: Center(
            child: Text("drawer"),
          ),
        ),
      ),
    );
  }
}
