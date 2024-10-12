import 'package:badyh_cal/core/constants/http_urls.dart';
import 'package:badyh_cal/core/models/post.dart';
import 'package:badyh_cal/helpers/dio_helper.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as d;
class PostsVm  extends GetxController{
RxList<Post> posts=List<Post>.empty(growable: true).obs;
DioHelper _dioHelper=DioHelper.instance;
loadPosts({required int category_id})async{
d.Response res=await _dioHelper.getRequest(url: "${HttpUrls.POSTS_BY_CATEGORY}/$category_id");
List<dynamic> resPosts=res.data;
posts.value=resPosts.map((p)=>Post.fromJson(p)).toList();
}


}