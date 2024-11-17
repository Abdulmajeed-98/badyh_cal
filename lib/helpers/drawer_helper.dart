import 'package:badiyh_calendar/core/models/category.dart';
import 'package:badiyh_calendar/core/models/navigation.dart';


class DrawerHelper{
  DrawerHelper._();
  static DrawerHelper? _drawerHelper;
  List<dynamic> drawerItems=[];
  List<Category>drawerCategoriesItems=[];
  bool isEmpty=true;

  static DrawerHelper get instance{
    if(_drawerHelper==null)
    _drawerHelper=DrawerHelper._();
    return _drawerHelper!;
  }

  initDrawer(){
    drawerItems.add(Navigation(title: "الرئيسية", route: "/home"));
    drawerItems.add(Navigation(title: "من نحن", route: "/about_us"));
    drawerItems.add(drawerCategoriesItems);
    drawerItems.add(Navigation(title: " التقويم الزراعي", route: "/calendar"));
    drawerItems.add(Navigation(title: 'أحداث ومناسبات', route: "/events",isBold: true));
    drawerItems.add(Navigation(title: 'الأسئلة الشائعة', route: "/faq"));
    drawerItems.add(Navigation(title: 'اتصل بنا', route: "/contact_us"));
    isEmpty=false;


  }


}