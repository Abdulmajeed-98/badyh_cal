import 'package:badiyh_calendar/core/model/categories_api.dart';
import 'package:badiyh_calendar/core/viewmodels/articles_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/categories_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/pages_v_m.dart';
import 'package:flutter/material.dart';

class TestDetailsScreen extends StatelessWidget {
  late Categories c;
  late String id;
  TestDetailsScreen({super.key, required this.c});
  PagesVM pvm = PagesVM();
  CategoriesVM cvm = CategoriesVM();
  ArticlesVM avm = ArticlesVM();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(c.name!),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 10, right: 10),
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
                                  onTap: () => Navigator.pushNamed(
                                      ctx, '/testd',
                                      arguments: snapshot.data![i]),
                                  child: Card(
                                    child: Container(
                                      padding: const EdgeInsetsDirectional.symmetric(
                                          horizontal: 20),
                                      child: Center(
                                        child: Text(snapshot.data![i].name!),
                                      ),
                                    ),
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
                FutureBuilder(
                    future: avm.getArticles('${c.id}'),
                    builder: (ctx, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return SizedBox(
                          height: 200,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data!.length,
                              itemBuilder: (ctx, i) {
                                return Stack(
                                  children: [
                                    Container(
                                      margin:
                                          const EdgeInsets.only(top: 10, left: 10),
                                      width: MediaQuery.of(context).size.width *
                                          0.75,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  snapshot.data![i].mainImage!),
                                              fit: BoxFit.fill),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.75,
                                        decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Colors.white24,
                                                  Colors.grey
                                                ],
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter),
                                            borderRadius: BorderRadius.vertical(
                                                bottom: Radius.circular(20))),
                                        child: Text(snapshot.data![i].title!),
                                      ),
                                    )
                                  ],
                                );
                              }),
                        );
                      } else {
                        return const CircularProgressIndicator();
                      }
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
