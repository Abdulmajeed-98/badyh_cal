import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text("drawer")),
        drawer: const Drawer(),
        body: Container(
          child: const Center(
            child: Text("drawer"),
          ),
        ),
      ),
    );
  }
}
