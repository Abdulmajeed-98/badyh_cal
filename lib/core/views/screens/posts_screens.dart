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
  final Category category;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final PostsVm postsVm = Get.put(PostsVm());
  RxBool isOn = true.obs;

  late Post post;

  @override
  Widget build(BuildContext context) {
    // إزالة استدعاء loadPosts من هنا
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          bottomNavigationBar: CusBottomNaviBar(),
          drawer: AppDrawer(),
          key: scaffoldKey,
          body: FutureBuilder(
            future: postsVm.loadPosts(category_id: category.id!), // تحميل البيانات هنا
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              
              return Obx(() => postsVm.posts.isEmpty
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
                            Expanded(
                              child: isOn.value
                                  ? GridView.builder(
                                      padding: EdgeInsets.symmetric(horizontal: 14),
                                      itemCount: postsVm.posts.length,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        mainAxisExtent:
                                            (MediaQuery.of(context).size.width /
                                                    2.23) -
                                                10,
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
                                  : ListView.separated(
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                        height: 10,
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 14),
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
                            CusButton(margin: EdgeInsets.only(bottom: 10), onTap: () {}),
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
                          left: 0,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ));
            },
          ),
        ),
      ),
    );
  }
}
