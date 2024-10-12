class Category {
  int? id;
  String? name;
  String? link;
  String? featuredImage;
  List<Category>? subcategories;

  Category(
      {this.id, this.name, this.link, this.featuredImage, this.subcategories});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    link = json['link'];
    featuredImage = json['featured_image'];
    if (json['subcategories'] != null) {
      subcategories = <Category>[];
      json['subcategories'].forEach((v) {
        subcategories!.add(Category.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['link'] = this.link;
    data['featured_image'] = this.featuredImage;
    if (this.subcategories != null) {
      data['subcategories'] =
          this.subcategories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
