import 'package:badiyh_calendar/core/viewmodels/articles_v_m.dart';
import 'package:badiyh_calendar/core/viewmodels/categories_v_m.dart';
import 'package:flutter/material.dart';

class DrawerContents extends StatelessWidget {
  DrawerContents({super.key});
  ArticlesVM avm = ArticlesVM();
  CategoriesVM cvm = CategoriesVM();
  String? selectedElement, selectedItem;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: cvm.getCategories(),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return SizedBox(
              height: 500,
              child: ListView.builder(  
                itemCount: snapshot.data!.length,
                itemBuilder: (context, i) => InkWell(
                  onTap: () {
                    avm.id.value = snapshot.data![i].id!;
                    avm.getArticles(avm.id.toString());
                  },
                  child: snapshot.data![i].children!.isEmpty
                      ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 15),
                            child: Text(snapshot.data![i].name!)),
                          Divider(),
                        ],
                      )
                      : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 15),
                            child: 
                            DropdownButton(
                              underline: Container(),
                              isDense: true,
                              // autofocus: true,
                              // focusColor: Color(0xFF09A223),
                              // iconEnabledColor: Color(0xFF09A223),
                                items: snapshot.data![i].children!.map((e) {
                                  return 
                                  DropdownMenuItem(
                                    value: e.name,
                                    child: e.children!.isEmpty
                                        ? Text(
                                            e.name!,
                                            style: TextStyle(fontSize: 14),
                                          )
                                        : DropdownButton(
                                          underline: Container(),
                                                        items: e.children!.map((item) {
                                              return DropdownMenuItem(
                                                value: item.name,
                                                child: Text(
                                                  item.name!,
                                                  style: TextStyle(fontSize: 14),
                                                ),
                                              );
                                            }).toList(),
                                            hint: Text(e.name!,
                                                style: TextStyle(fontSize: 14)),
                                            onTap: () {
                                              snapshot.data![i].children![i].id!;
                                              avm.getArticles(avm.id.toString());
                                            },
                                            onChanged: (value) {
                                              selectedElement = value;
                                              avm.id.value = snapshot
                                                  .data![i].children![i].id!;
                                              avm.getArticles(avm.id.toString());
                                            }),
                                  );
                                }).toList(),
                                hint: Text(snapshot.data![i].name!,
                                    style: TextStyle(fontSize: 14)),
                                onTap: () {
                                  avm.id.value =
                                      snapshot.data![i].children![i].id!;
                                  avm.getArticles(avm.id.toString());
                                  print(avm.id);
                                },
                                onChanged: (val) {
                                  selectedItem = val;
                                  avm.id.value =
                                      snapshot.data![i].children![i].id!;
                                  avm.getArticles(avm.id.toString());
                                  print(avm.id);
                                }),
                          ),Divider()
                        ],
                      ),
                ),
              ),
            );
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
