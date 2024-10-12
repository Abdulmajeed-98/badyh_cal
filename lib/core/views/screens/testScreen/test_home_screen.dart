import 'package:badiyh_calendar/core/model/pages_api.dart';
import 'package:badiyh_calendar/core/viewmodels/categories_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/pages_v_m.dart';
import 'package:flutter/material.dart';

class TestHomeScreen extends StatelessWidget {
  TestHomeScreen({super.key});
  CategoriesVM cvm = CategoriesVM();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('اخبار عامة'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                    height: 50,
                    child: FutureBuilder(
                        future: cvm.getCategories(),
                        builder: (ctx, snapshot) {
                          if (snapshot.connectionState == ConnectionState.done) {
                            return SizedBox(
                              height: 50,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: snapshot.data!.length,
                                itemBuilder: (context, i) => InkWell(
                                  onTap: () => Navigator.pushNamed(ctx, '/testd',
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
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
