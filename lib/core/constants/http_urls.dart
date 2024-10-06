import 'package:flutter/foundation.dart';

class HttpUrls {
  static const pageURL = 'https://badyh.org/wp-json/custom-api/v1/pages/';
  static late String p;
  static String pURL = (pageURL+p);
  static const categoryURL = 'https://badyh.org/wp-json/custom-api/v1/categories/';
  static late String c;
  static String cURL = (categoryURL+c);
  static const articlURL = 'https://badyh.org/wp-json/custom-api/v1/articles/';
  static late String a;
  // static String aURL = (articlURL+a);
}