import 'package:badiyh_calendar/core/model/categories_api.dart';

class CategoriesVM {
  final Categories category;

  CategoriesVM(this.category);

  String get id => category.id?.toString() ?? "No ID";
  String get name => category.name ?? "No Name";
  String get slug => category.slug ?? "No Slug";
  String get count => category.count?.toString() ?? "0";
  List<ChildrenVM> get children => 
      category.children?.map((child) => ChildrenVM(child)).toList() ?? [];
}

class ChildrenVM {
  final Children child;

  ChildrenVM(this.child);

  String get id => child.id?.toString() ?? "No ID";
  String get name => child.name ?? "No Name";
  String get slug => child.slug ?? "No Slug";
  String get count => child.count?.toString() ?? "0";
  List<ChildrenVM> get children => 
      child.children?.map((child) => ChildrenVM(child)).toList() ?? [];
}
