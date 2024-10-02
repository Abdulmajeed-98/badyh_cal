import 'package:badiyh_calendar/core/constants/http_urls.dart';
import 'package:badiyh_calendar/core/model/categories_api.dart';
import 'package:dio/dio.dart';

class CategoriesVM {
  // final Categories category;

  // CategoriesVM(this.category);

  // String get id => category.id?.toString() ?? "No ID";
  // String get name => category.name ?? "No Name";
  // String get slug => category.slug ?? "No Slug";
  // String get count => category.count?.toString() ?? "0";
  // List<ChildrenVM> get children => 
  //     category.children?.map((child) => ChildrenVM(child)).toList() ?? [];

  Future<List<Categories>?> getCategories() async {
    Dio d = Dio();
    try {
      Response res = await d.get(HttpUrls.categoryURL);
      List<Categories>? allCategories =
          res.data!.map<Categories>((e) => Categories.fromJson(e)).toList();
      return allCategories;
    } catch (e) {
      print("the exception is $e");
    }
  }
}

class ChildrenVM {
  // final Children child;

  // ChildrenVM(this.child);

  // String get id => child.id?.toString() ?? "No ID";
  // String get name => child.name ?? "No Name";
  // String get slug => child.slug ?? "No Slug";
  // String get count => child.count?.toString() ?? "0";
  // List<ChildrenVM> get children => 
  //     child.children?.map((child) => ChildrenVM(child)).toList() ?? [];

  
}
