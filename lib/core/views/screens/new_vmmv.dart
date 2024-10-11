import 'package:badiyh_calendar/core/viewmodels/home_vm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:badiyh_calendar/core/model/category.dart';
import 'package:badiyh_calendar/core/model/post.dart';
import 'package:badiyh_calendar/helper/http_helper.dart';

class HomePage extends StatelessWidget {
  final HomeVm homeVm = Get.put(HomeVm(httpHelper: HttpHelper.instance));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Obx(() {
        if (homeVm.homeList.isEmpty) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: homeVm.homeList.length,
            itemBuilder: (context, index) {
              final item = homeVm.homeList[index];
              
              // Check if item is a Category or a list of Posts
              if (item is Category) {
                return _buildCategoryItem(item);
              } else if (item is List<Post>) {
                return _buildPostList(item);
              } else {
                return SizedBox.shrink();
              }
            },
          );
        }
      }),
    );
  }

  // Widget for displaying Category
  Widget _buildCategoryItem(Category category) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        title: Text(category.name!, style: TextStyle(fontWeight: FontWeight.bold)), // Assuming 'name' is a field in Category
        subtitle: Text('Category ID: ${category.id}'), // Assuming 'id' is a field in Category
        leading: Icon(Icons.category),
      ),
    );
  }

  // Widget for displaying a list of Posts
  Widget _buildPostList(List<Post> posts) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text('Posts:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        ListView.builder(
          shrinkWrap: true, // To avoid infinite height error
          physics: NeverScrollableScrollPhysics(),
          itemCount: posts.length,
          itemBuilder: (context, index) {
            final post = posts[index];
            return Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              child: ListTile(
                title: Text(post.title!, style: TextStyle(fontWeight: FontWeight.bold)), // Assuming Post has 'title'
                subtitle: Text(post.title!), // Assuming Post has 'content'
                leading: Icon(Icons.article),
              ),
            );
          },
        ),
      ],
    );
  }
}
