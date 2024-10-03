import 'package:badiyh_calendar/core/viewmodels/articles_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/categories_v_m.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestHomeScreen extends StatelessWidget {
  TestHomeScreen({super.key});
  CategoriesVM cvm = CategoriesVM();
  final avm = Get.find<ArticlesVM>();
  String? selectedItem, selectedElement;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Badiyh App'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 10, right: 10),
            child: Column(
              children: [
                SizedBox(
                    height: 50,
                    child: FutureBuilder(
                        future: cvm.getCategories(),
                        builder: (ctx, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return SizedBox(
                              height: 50,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: snapshot.data!.length,
                                itemBuilder: (context, i) => InkWell(
                                  onTap: () {
                                    avm.id.value = snapshot.data![i].id!;
                                    avm.getArticles(avm.id.toString());
                                  },
                                  child: snapshot.data![i].children!.isEmpty
                                      ? Card(
                                          child: Container(
                                            padding:
                                                EdgeInsetsDirectional.symmetric(
                                                    horizontal: 20),
                                            child: Center(
                                              child:
                                                  Text(snapshot.data![i].name!),
                                            ),
                                          ),
                                        )
                                      : Card(
                                          child: DropdownButton(
                                              underline: Container(),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20),
                                              items: snapshot.data![i].children!
                                                  .map((e) {
                                                return DropdownMenuItem(
                                                  value: e.name,
                                                  child: e.children!.isEmpty
                                                      ? Text(
                                                          e.name!,
                                                          style: TextStyle(
                                                              fontSize: 14),
                                                        )
                                                      : DropdownButton(
                                                          underline:
                                                              Container(),
                                                          items: e.children!
                                                              .map((item) {
                                                            return DropdownMenuItem(
                                                              value: item.name,
                                                              child: Text(
                                                                item.name!,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        14),
                                                              ),
                                                            );
                                                          }).toList(),
                                                          hint: Text(e.name!,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      14)),
                                                          onTap: () {
                                                            snapshot
                                                                .data![i]
                                                                .children![i]
                                                                .id!;
                                                            avm.getArticles(avm
                                                                .id
                                                                .toString());
                                                          },
                                                          onChanged: (value) {
                                                            selectedElement =
                                                                value;
                                                            avm.id.value =
                                                                snapshot
                                                                    .data![i]
                                                                    .children![
                                                                        i]
                                                                    .id!;
                                                            avm.getArticles(avm
                                                                .id
                                                                .toString());
                                                          }),
                                                );
                                              }).toList(),
                                              hint: Text(
                                                  snapshot.data![i].name!,
                                                  style:
                                                      TextStyle(fontSize: 14)),
                                              onTap: () {
                                                avm.id.value = snapshot
                                                    .data![i].children![i].id!;
                                                avm.getArticles(
                                                    avm.id.toString());
                                                print(avm.id);
                                              },
                                              onChanged: (val) {
                                                selectedItem = val;
                                                avm.id.value = snapshot
                                                    .data![i].children![i].id!;
                                                avm.getArticles(
                                                    avm.id.toString());
                                                print(avm.id);
                                              }),
                                        ),
                                ),
                              ),
                            );
                          } else {
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, i) => Card(
                                child: Container(
                                  width: 80,
                                ),
                              ),
                            );
                          }
                        })),
                Obx(() {
                  if (avm.r.value.length == 0) {
                    return CircularProgressIndicator();
                  }
                  // print('yyyy${avm.r.value.length}');
                  return SizedBox(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: avm.r.value.length,
                        itemBuilder: (ctx, i) {
                          return Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10, left: 10),
                                width: MediaQuery.of(context).size.width * 0.75,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    image: DecorationImage(
                                        image: avm.r[i].mainImage != ""
                                            ? NetworkImage(avm.r[i].mainImage!)
                                            : AssetImage(
                                                'assets/images/the_news.png'),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      right: 10, left: 10, bottom: 5),
                                  // height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [Colors.white24, Colors.grey],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                      borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(20))),
                                  child: Text(avm.r[i].title!),
                                ),
                              )
                            ],
                          );
                        }),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
