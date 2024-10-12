// import 'package:get/get.dart';

// class HomeVm extends GetxController {
//   static HomeVm? hvm;
//   HomeVm._();
//   static HomeVm get instance {
//     if (hvm == null) hvm = HomeVm._();
//     return hvm!;
//   }

//   RxList<dynamic> homeList = <dynamic>[].obs;
// }



import 'package:badyh_cal/core/constants/http_urls.dart';
import 'package:badyh_cal/core/models/category.dart';
import 'package:badyh_cal/core/models/post.dart';
import 'package:badyh_cal/helpers/dio_helper.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeVm extends GetxController {
  RxList<dynamic> homeList = <dynamic>[].obs;
  final DioHelper _dioHelper;
  RxInt vID = 0.obs;
  // Dependency Injection via constructor (DIP)
  HomeVm({required DioHelper httpHelper}) : _dioHelper = httpHelper;

  @override
  void onInit() {
    super.onInit();
    _loadHomeItems();
  }

  void _loadHomeItems() {
    getHomeItems("category_id=232&limit=4");
    getHomeItems("category_id=37&limit=4");
  }

  Future<void> getHomeItems(String parameters) async {
    try {

      final response = await _dioHelper.getRequest(
        url: "${HttpUrls.CATEGORY_WITH_POSTS}$parameters",
      );

      List<dynamic> posts = response.data["posts"];
      Category category = Category.fromJson(response.data["category"]);
      List<Post> allPosts = posts.map((post) => Post.fromJson(post)).toList();

      // Add both category and posts to the home list
      homeList.add(category);
      homeList.add(allPosts);
    } catch (e) {
      // Handle error (e.g., log error or show message)
      print("Error fetching home items: $e");
    }
  }
}
