import 'package:shimmer/shimmer.dart';
import 'package:badiyh_calendar/core/constants/http_urls.dart';
import 'package:badiyh_calendar/core/constants/scaffold_key.dart';
import 'package:badiyh_calendar/core/models/category.dart';
import 'package:badiyh_calendar/core/models/post.dart';
import 'package:badiyh_calendar/core/viewmodels/posts_vm.dart';
import 'package:badiyh_calendar/core/views/widgets/app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_back_button.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_drawer_icon.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_grund_img.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_tall_container.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_wide_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostsScreens extends StatelessWidget {
  PostsScreens({super.key, required this.category});
  final Category category;
  final PostsVm postsVm = Get.put(PostsVm());
  RxBool isOn = true.obs;
  late Post post;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          bottomNavigationBar: CusBottomNaviBar(),
          drawer: AppDrawer(),
          key: scaffoldKey,
          body: FutureBuilder(
            future: postsVm.loadPosts(category_id: category.id!),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                // عرض الـ Shimmer أثناء التحميل
                return _buildShimmerLoading(context);
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
                                  // Expanded(
                                  //   child: DropdownButton(
                                  //     isExpanded: true,
                                  //     items: [
                                  //       'برامج الإغاثة الإنسانية',
                                  //       'البرامج الصحية',
                                  //       'البرامج التعليمية'
                                  //     ]
                                  //         .map((e) => DropdownMenuItem(
                                  //             value: e, child: Text(e)))
                                  //         .toList(),
                                  //     onChanged: (value) {},
                                  //     hint: Text('التصنيف'),
                                  //   ),
                                  // ),

                                  IconButton(
                                    onPressed: () {
                                      isOn.value = !isOn.value;
                                    },
                                    icon: isOn.value
                                        ? Icon(
                                            Icons.table_rows,
                                            size: 35,
                                          )
                                        : Icon(Icons.grid_view, size: 35),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: isOn.value
                                  ? GridView.builder(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 14),
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
                                          onTap: () {
                                            HttpUrls.WEB_VIEW = post.link!;
                                            Get.toNamed('/web');
                                          },
                                        );
                                      },
                                    )
                                  : ListView.separated(
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                        height: 10,
                                      ),
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 14),
                                      itemCount: postsVm.posts.length,
                                      itemBuilder: (context, index) {
                                        post = postsVm.posts[index];
                                        return CusWideContainer(
                                          onTap: () {
                                            HttpUrls.WEB_VIEW = post.link!;
                                            Get.toNamed('/web');
                                          },
                                          image: post.featuredImage,
                                          dateTxt: post.date!,
                                          authorTxt: post.author!,
                                          titleTxt: post.title!,
                                        );
                                      },
                                    ),
                            ),
                          ],
                        ),
                        CusDrawerIcon(
                          onPressed: () =>
                              scaffoldKey.currentState!.openDrawer(),
                        ),
                        CusBackButton(),
                      ],
                    ));
            },
          ),
        ),
      ),
    );
  }

  // Widget for showing Shimmer effect while loading
  Widget _buildShimmerLoading(BuildContext context) {
    return Column(
      children: [
        CusGrundImg(txt: category.name),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            children: [
              Expanded(
                child: Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    height: 48,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  width: 48,
                  height: 48,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: isOn.value
              ? GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  itemCount: 4, // Placeholder item count while loading
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent:
                        (MediaQuery.of(context).size.width / 2.23) - 10,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        height: 200,
                        color: Colors.white,
                      ),
                    );
                  },
                )
              : ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  itemCount: 4, // Placeholder item count while loading
                  itemBuilder: (context, index) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        height: 120,
                        color: Colors.white,
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
