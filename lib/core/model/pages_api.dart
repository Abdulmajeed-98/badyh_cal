class Pages {
  int? id;
  String? title;
  String? mainImage;
  String? publishedDate;
  String? link;

  Pages({this.id, this.title, this.mainImage, this.publishedDate, this.link});

  Pages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    mainImage = json['main_image'];
    publishedDate = json['published_date'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['main_image'] = mainImage;
    data['published_date'] = publishedDate;
    data['link'] = link;
    return data;
  }
}
