import 'package:badiyh_calendar/core/views/widgets/drawer_contents.dart';
import 'package:flutter/material.dart';

class CusAppDrawer extends StatelessWidget {
  const CusAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Drawer(
        width: MediaQuery.of(context).size.width * 0.72,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 25, right: 25),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    height: 48,
                    width: 48,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/badyh_logo.png'))),
                  ),
                  const Text('مؤسسة البادية للتنمية\nوالأعمال الإنسانية'),
                ],
              ),
            ),
            DrawerContents(),
          ],
        ),
      ),
    );
  }
}
