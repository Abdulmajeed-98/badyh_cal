import 'package:badiyh_calendar/core/model/pages_api.dart';

class PagesVM {
  final Pages page;

  PagesVM(this.page);

  String? get title => page.title ?? "No Title Available";
  String? get mainImage => page.mainImage ?? "No Image Available";
  String? get publishedDate => page.publishedDate ?? "No Date Provided";
  String? get link => page.link ?? "No Link Available";
}
