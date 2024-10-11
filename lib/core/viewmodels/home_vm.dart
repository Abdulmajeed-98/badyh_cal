import 'package:badiyh_calendar/core/constants/http_urls.dart';
import 'package:badiyh_calendar/core/model/category.dart';
import 'package:badiyh_calendar/core/model/post.dart';
import 'package:badiyh_calendar/helper/http_helper.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeVm extends GetxController {
  RxList<dynamic> homeList = <dynamic>[].obs;
  final HttpHelper _httpHelper;

  // Dependency Injection via constructor (DIP)
  HomeVm({required HttpHelper httpHelper}) : _httpHelper = httpHelper;

  @override
  void onInit() {
    super.onInit();
    _loadHomeItems();
  }

  void _loadHomeItems() {
    getHomeItems("category_id=37&limit=4");
    getHomeItems("category_id=232&limit=4");
  }

  Future<void> getHomeItems(String parameters) async {
    try {
      print('zxzxczxzcsfgadgfgadnhdfhgasgfhgesfn');

      final response = await _httpHelper.getRequest(
        // url: "${HttpUrls.CATEGORY_WITH_POSTS}$parameters",
        url: "${HttpUrls}$parameters",
      );

      List<dynamic> posts = response.data["posts"];
      Category category = Category.fromJson(response.data["category"]);
      List<Post> allPosts = posts.map((post) => Post.fromJson(post)).toList();

      // Add both category and posts to the home list
      homeList.add(category);
      homeList.add(allPosts);
      print('zxzxczxzcsfgadgfgadnhdfhgasgfhgesfn');
    } catch (e) {
      // Handle error (e.g., log error or show message)
      print("Error fetching home items: $e");
    }
  }
}
