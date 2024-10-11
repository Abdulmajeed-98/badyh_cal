class Post {
  int? id;
  String? title;
  String? link;
  String? excerpt;
  String? date;
  String? author;
  String? featuredImage;

  Post(
      {this.id,
      this.title,
      this.link,
      this.excerpt,
      this.date,
      this.author,
      this.featuredImage});

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    link = json['link'];
    excerpt = json['excerpt'];
    date = json['date'];
    author = json['author'];
    featuredImage = json['featured_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['link'] = this.link;
    data['excerpt'] = this.excerpt;
    data['date'] = this.date;
    data['author'] = this.author;
    data['featured_image'] = this.featuredImage;
    return data;
  }
}
