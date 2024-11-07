import 'package:badiyh_calendar/core/models/navigation.dart';
import 'package:badiyh_calendar/helpers/drawer_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; // استيراد GetX

class AppDrawer extends StatelessWidget {
  AppDrawer({super.key});
  DrawerHelper drawerHelper = DrawerHelper.instance;

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                      image: AssetImage('assets/images/badyh_logo1.png'),
                    ),
                  ),
                ),
                Text(
                  'مؤسسة البادية للتنمية\nوالأعمال الإنسانية',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(child: ListView(children: buildDrawerList())),
        ],
      ),
    );
  }

  List<Widget> buildDrawerList() {
    List<Widget> items = [];
    drawerHelper.drawerItems.forEach((item) {
      if (item is Navigation) {
        items.add(
          ListTile(
            title: Text(item.title),
            onTap: () {
              Get.toNamed(item.route, arguments: item); // التحويل إلى Get.toNamed
            },
          ),
        );
      } else {
        item.forEach((cat) {
          if (cat.subcategories.isEmpty)
            items.add(
              ListTile(
                title: Text(cat.name!),
                onTap: () {
                  Get.toNamed("/posts", arguments: cat); // التحويل إلى Get.toNamed
                },
              ),
            );
          else {
            items.add(ExpansionTile(
              title: Text(cat.name!),
              children: cat.subcategories!.map<Widget>((subChild) {
                return ListTile(
                  title: Text(subChild.name!),
                  onTap: () {
                    Get.toNamed("/posts", arguments: subChild); // التحويل إلى Get.toNamed
                  },
                );
              }).toList(),
            ));
          }
        });
      }
    });
    return items;
  }
}
