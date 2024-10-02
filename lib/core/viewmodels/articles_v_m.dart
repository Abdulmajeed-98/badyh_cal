import 'package:badiyh_calendar/core/constants/http_urls.dart';
import 'package:badiyh_calendar/core/model/articles_api.dart';
import 'package:dio/dio.dart';

class ArticlesVM {
  // final Articles article;

  // ArticlesVM(this.article);

  // String get id => article.id?.toString() ?? "No ID";
  // String get title => article.title ?? "No Title";
  // String get mainImage => article.mainImage ?? "No Image Available";
  // String get readsCount => article.readsCount?.toString() ?? "0 Reads";
  // String get publishedDate => article.publishedDate ?? "No Date Provided";
  // String get link => article.link ?? "No Link Available";

  Future<List<Articles>?> getArticles(String aID) async {
    Dio d = Dio();
    HttpUrls.a = aID;
    try {
      Response res = await d.get(HttpUrls.aURL);
      List<Articles>? allCategories =
          res.data!.map<Articles>((e) => Articles.fromJson(e)).toList();
      return allCategories;
    } catch (e) {
      print("the exception is $e");
    }
  }
}
