import 'package:badyh_cal/core/models/category.dart';
import 'package:badyh_cal/core/models/post.dart';
import 'package:badyh_cal/core/viewmodels/posts_vm.dart';
import 'package:badyh_cal/core/views/widgets/app_drawer.dart';
import 'package:badyh_cal/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:badyh_cal/core/views/widgets/cus_button.dart';
import 'package:badyh_cal/core/views/widgets/cus_grund_img.dart';
import 'package:badyh_cal/core/views/widgets/cus_tall_container.dart';
import 'package:badyh_cal/core/views/widgets/cus_wide_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostsScreens extends StatelessWidget {
  PostsScreens({super.key, required this.category});
  final Category category;  // جعل category ثابتًا
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final PostsVm postsVm = Get.put(PostsVm());
  RxBool isOn = true.obs;

  late Post post;

  @override
  Widget build(BuildContext context) {
    postsVm.posts.clear();
    postsVm.loadPosts(category_id: category.id!);

    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          bottomNavigationBar: CusBottomNaviBar(),
          drawer: AppDrawer(),
          key: scaffoldKey,
          body: Obx(() => postsVm.posts.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Stack(
                  children: [
                    Column(
                      children: [
                        CusGrundImg(
                          txt: category.name,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          child: Row(
                            children: [
                              Expanded(
                                child: DropdownButton(
                                  isExpanded: true,
                                  items: ['asd', 'zxc', 'fgh']
                                      .map((e) => DropdownMenuItem(
                                          value: e, child: Text(e)))
                                      .toList(),
                                  onChanged: (value) {},
                                  hint: Text('التصنيف'),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  isOn.value = !isOn.value;
                                },
                                icon: isOn.value
                                    ? Icon(Icons.grid_view)
                                    : Icon(Icons.table_rows),
                              ),
                            ],
                          ),
                        ),
                        Expanded(  // استخدام Expanded لتوسيع مساحة GridView أو ListView
                          child: isOn.value
                              ? GridView.builder(
                                  itemCount: postsVm.posts.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                  ),
                                  itemBuilder: (context, index) {
                                    post = postsVm.posts[index];
                                    return CusTallContainer(
                                      image: post.featuredImage,
                                      dateTxt: post.date!,
                                      authorTxt: post.author!,
                                      titleTxt: post.title!,
                                      onTap: () {},
                                    );
                                  },
                                )
                              : ListView.builder(
                                  itemCount: postsVm.posts.length,
                                  itemBuilder: (context, index) {
                                    post = postsVm.posts[index];
                                    return CusWideContainer(
                                      image: post.featuredImage,
                                      dateTxt: post.date!,
                                      authorTxt: post.author!,
                                      titleTxt: post.title!,
                                    );
                                  },
                                ),
                        ),
                        CusButton(onTap: () {}),
                      ],
                    ),
                    Positioned(
                      child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        onPressed: () =>
                            scaffoldKey.currentState!.openDrawer(),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                )),
        ),
      ),
    );
  }
}
