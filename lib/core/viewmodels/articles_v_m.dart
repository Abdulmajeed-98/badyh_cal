import 'package:badiyh_calendar/core/model/articles_api.dart';

class ArticlesVM {
  final Articles article;

  ArticlesVM(this.article);

  String get id => article.id?.toString() ?? "No ID";
  String get title => article.title ?? "No Title";
  String get mainImage => article.mainImage ?? "No Image Available";
  String get readsCount => article.readsCount?.toString() ?? "0 Reads";
  String get publishedDate => article.publishedDate ?? "No Date Provided";
  String get link => article.link ?? "No Link Available";
}
