import 'package:flutter/material.dart';

class CusWideContainer extends StatelessWidget {
  CusWideContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width / 1.08,
        // height: MediaQuery.of(context).size.height / 12,
        height: 70,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: const Color.fromARGB(150, 0, 0, 0),blurRadius: 5,offset: Offset(-4, 10),spreadRadius: -10,)],
          borderRadius: BorderRadius.circular(1.25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/the_news.png'),
                      fit: BoxFit.fill)),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color.fromRGBO(240, 240, 240, 10), Colors.white],
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter),
              ),
              padding: EdgeInsets.only(top: 5, right: 5),
              width: MediaQuery.of(context).size.width / 2.1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 4,
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 10,
                      ),
                      Text(
                        '2024.12ديسمبر',
                        style: TextStyle(fontFamily: 'Tajawal', fontSize: 10),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.person_outline_rounded,
                        size: 12,
                      ),
                      Text('عمر عيضه',
                          style: TextStyle(fontFamily: 'Tajawal', fontSize: 10)),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text('مؤسسة البادية للتنمية',
                      style: TextStyle(fontFamily: 'Tajawal')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
