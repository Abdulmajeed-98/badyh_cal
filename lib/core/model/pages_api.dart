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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['main_image'] = this.mainImage;
    data['published_date'] = this.publishedDate;
    data['link'] = this.link;
    return data;
  }
}
