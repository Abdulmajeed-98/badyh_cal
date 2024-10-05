import 'package:badiyh_calendar/core/constants/http_urls.dart';
import 'package:badiyh_calendar/core/model/pages_api.dart';
import 'package:dio/dio.dart';

class PagesVM {
  // final Pages page;
  // PagesVM(this.page);
  // String? get title => page.title ?? "No Title Available";
  // String? get mainImage => page.mainImage ?? "No Image Available";
  // String? get publishedDate => page.publishedDate ?? "No Date Provided";
  // String? get link => page.link ?? "No Link Available";

  Future<List<Pages>?> getPages() async {
    Dio d = Dio();
    try {
      Response res = await d.get(HttpUrls.pageURL);
      List<Pages>? allPages =
          res.data!.map<Pages>((e) => Pages.fromJson(e)).toList();
      return allPages;
    } catch (e) {
      print("the exception is $e");
    }
  }
}
