import 'package:badiyh_calendar/core/constants/http_urls.dart';
import 'package:badiyh_calendar/core/models/category.dart';
import 'package:badiyh_calendar/core/models/post.dart';
import 'package:badiyh_calendar/core/viewmodels/home_vm.dart';
import 'package:badiyh_calendar/core/viewmodels/news_v_m.dart';
import 'package:badiyh_calendar/core/views/widgets/app_drawer.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_bottom_navi_bar.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_button.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_donate_button.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_drawer_icon.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_grund_img.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_stack.dart';
import 'package:badiyh_calendar/core/views/widgets/cus_tall_container.dart';
import 'package:badiyh_calendar/core/views/widgets/shimmer_widget/shimmer_home.dart';
import 'package:badiyh_calendar/helpers/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsScreen extends StatelessWidget {
  NewsScreen({super.key});
  final NewsVM newsVm = Get.put(NewsVM(httpHelper: DioHelper.instance));

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          key: scaffoldKey,
          floatingActionButton: CusDonateButton(),
          bottomNavigationBar: CusBottomNaviBar(
              imgHome: Image.asset(
            'assets/images/homebottomOn.png',
          )),
          drawer: AppDrawer(),
          body: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CusGrundImg(),
                      Positioned(
                          child: Column(
                        children: [
                          Text(
                            'أهلاً في تطبيق',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'مؤسسة البادية للتنمية والأعمال الإنسانية',
                            style: Theme.of(context).textTheme.headlineMedium,
                          )
                        ],
                      )),
                    ],
                  ),
                  Obx(() {
                    if (newsVm.homeList.isEmpty) {
                      return buildShimmerEffect();
                    } else {
                      return Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context, index) => index.isOdd
                              ? Container(
                                  // height:
                                  // MediaQuery.of(context).size.height / 8,
                                  margin: EdgeInsets.symmetric(vertical: 15),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/badyh_box.png'),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(2.5),
                                  ),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 16,
                                            height: 16,
                                            margin: EdgeInsets.only(left: 5),
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/Group-5.png')),
                                            ),
                                          ),
                                          Text(
                                            'مجالات عملنا',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 22),
                                        child: Text(
                                          'تمثلت مجالات عمل البادية في مجالات تنموية وانسلنية اربعة\n(مجال العمل الانساني, المجال الصحي, مجال التعليم, مجال التنمية المستدامة)',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              : SizedBox.shrink(),
                          padding: EdgeInsets.symmetric(
                              horizontal: 14, vertical: 10),
                          // physics: NeverScrollableScrollPhysics(),
                          itemCount: newsVm.homeList.length,
                          itemBuilder: (context, index) {
                            // print(newsVm.homeList.length);
                            final item = newsVm.homeList[index];

                            // Check if item is a Category or a list of Posts
                            if (item is Category) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    item.name!,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                  CusButton(
                                      onTap: () => Get.toNamed('/posts',
                                          arguments: item))
                                ],
                              );
                            } else if (item is List<Post> && index < 2) {
                              return _buildPostGrid(item, context);
                            } else {
                              return _buildPostList(item, context);
                            }
                            // else {
                            //   return SizedBox.shrink();
                            // }
                          },
                        ),
                      );
                    }
                  }),
                ],
              ),
              CusDrawerIcon(
                onPressed: () => scaffoldKey.currentState!.openDrawer(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Widget for displaying a list of Posts
Widget _buildPostGrid(List<Post> posts, BuildContext context) {
  return SizedBox(
    height: 2 * (MediaQuery.of(context).size.width / 2.75),
    child: GridView.builder(

        // padding: EdgeInsets.symmetric(vertical: 10),
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            mainAxisExtent: (MediaQuery.of(context).size.width / 3),
            crossAxisCount: 2),
        itemCount: 4,
        itemBuilder: (context, i) => CusStack(
            image: posts[i].featuredImage,
            dateTxt: posts[i].date!,
            nameTxt: posts[i].author!,
            titleTxt: posts[i].title!,
            onTap: () {
              HttpUrls.WEB_VIEW = posts[i].link!;
              Get.toNamed('/web');
            })),
  );
}

Widget _buildPostList(List<Post> posts, BuildContext context) {
  return SizedBox(
    height: (MediaQuery.of(context).size.width / 2.23) + 10,
    child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
              width: 10,
            ),
        scrollDirection: Axis.horizontal,
        // physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        clipBehavior: Clip.antiAlias,
        itemBuilder: (context, i) => CusTallContainer(
            width: MediaQuery.of(context).size.width / 2.4,
            image: posts[i].featuredImage,
            dateTxt: posts[i].date!,
            authorTxt: posts[i].author!,
            titleTxt: posts[i].title!,
            onTap: () {
              HttpUrls.WEB_VIEW = posts[i].link!;
              Get.toNamed('/web');
            })),
  );
}
