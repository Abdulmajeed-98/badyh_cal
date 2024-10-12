import 'package:badyh_cal/core/constants/http_urls.dart';
import 'package:badyh_cal/core/models/category.dart';
import 'package:badyh_cal/core/viewmodels/home_vm.dart';
import 'package:badyh_cal/helpers/dio_helper.dart';
import 'package:badyh_cal/helpers/drawer_helper.dart';
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
      // print("the data of res is ${res.data}");

      List<dynamic> resCategories = res.data;
      List<Category> drawerCategories =
          resCategories.map((category) => Category.fromJson(category)).toList();
      _drawerHelper.drawerCategoriesItems = drawerCategories;
      _drawerHelper.initDrawer();
      // hvm.homeList.value.addAll(drawerCategories);
    } catch (e) {
      print("error is $e");
    }
  }
}
