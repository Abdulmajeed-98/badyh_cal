import 'package:badiyh_calendar/core/views/widgets/cus_app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_wide_container.dart';
import 'package:flutter/material.dart';

class Tousedrawer extends StatelessWidget {
  Tousedrawer({super.key});
  
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: CusAppDrawer(),
        body: Stack(
          children: <Widget>[
            const Center(
                child: Column(
              children: <Widget>[],
            )),
            Positioned(
              left: 10,
              top: 20,
              child: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => scaffoldKey.currentState!.openDrawer(),
              ),
            ),
          ],
        ),
      );
  }
}