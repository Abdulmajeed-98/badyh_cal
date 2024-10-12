class HttpUrls {
  // قاعدة URL
  static const String BASE_URL = "https://badyh.org/wp-json/myapi/v1";
  
  // URL مع الفئات والمقالات
  static const String CATEGORY_WITH_POSTS = "$BASE_URL/category-with-posts?";
  static const String CATEGORY_WITH_SUB = "$BASE_URL/categories-with-subcategories?category_ids=232,36";
  static const String POSTS_BY_CATEGORY="$BASE_URL/posts-by-category";
  

  // // إذا كنت بحاجة إلى تعيين متغيرات ديناميكية، يمكن إنشاء دوال مساعدة
  // static String getPageUrl(String pageId) {
  //   return "$pageURL$pageId";
  // }

  // static String getCategoryUrl(String categoryId) {
  //   return "$categoryURL$categoryId";
  // }

  // static String getArticleUrl(String articleId) {
  //   return "$articlURL$articleId";
  // }
}
