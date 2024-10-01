class Articles {
  int? id;
  String? title;
  String? mainImage;
  int? readsCount;
  String? publishedDate;
  String? link;

  Articles(
      {this.id,
      this.title,
      this.mainImage,
      this.readsCount,
      this.publishedDate,
      this.link});

  Articles.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    mainImage = json['main_image'];
    readsCount = json['reads_count'];
    publishedDate = json['published_date'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['main_image'] = this.mainImage;
    data['reads_count'] = this.readsCount;
    data['published_date'] = this.publishedDate;
    data['link'] = this.link;
    return data;
  }
}
