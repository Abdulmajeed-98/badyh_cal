import 'package:badiyh_calendar/core/views/widgets/drawer_contents.dart';
import 'package:flutter/material.dart';

class CosAppDrawer extends StatelessWidget {
  CosAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Drawer(
        width: MediaQuery.of(context).size.width * 0.72,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 25, right: 25),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/badyh_logo.png'))),
                  ),
                  Text('مؤسسة البادية للتنمية\nوالأعمال الإنسانية'),
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
