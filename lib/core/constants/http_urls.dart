class HttpUrls {
  // الرئيسي URL
  static const String BASE_URL = "https://badyh.org/wp-json/myapi/v1";

  // URL + الفروع
  static const String CATEGORY_WITH_POSTS = "$BASE_URL/category-with-posts?";
  static const String CATEGORY_WITH_SUB =
      "$BASE_URL/categories-with-subcategories?category_ids=232,36";
  static const String POSTS_BY_CATEGORY = "$BASE_URL/posts-by-category";
  static const String ABOUT_US = "https://badyh.org/about-us";
  static String WEB_VIEW = "";
}
