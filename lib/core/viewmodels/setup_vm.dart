import 'package:badiyh_calendar/core/constants/http_urls.dart';
import 'package:badiyh_calendar/core/models/category.dart';
import 'package:badiyh_calendar/helpers/dio_helper.dart';
import 'package:badiyh_calendar/helpers/drawer_helper.dart';
import 'package:dio/dio.dart' as d;
import 'package:get/get.dart';

class SetupVm extends GetxController {
  DrawerHelper _drawerHelper = DrawerHelper.instance;
  DioHelper _dioHelper = DioHelper.instance;
  // HomeVm hvm = HomeVm.instance;
  setupDrawer() async {
    try {
      d.Response res =
          await _dioHelper.getRequest(url: HttpUrls.CATEGORY_WITH_SUB);
      //

      List<dynamic> resCategories = res.data;
      List<Category> drawerCategories =
          resCategories.map((category) => Category.fromJson(category)).toList();
      _drawerHelper.drawerCategoriesItems = drawerCategories;
      _drawerHelper.initDrawer();
      // hvm.homeList.value.addAll(drawerCategories);
    } catch (e) {}
  }
}
