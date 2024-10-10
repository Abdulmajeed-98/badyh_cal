import 'package:flutter/material.dart';

class CusTallContainer extends StatelessWidget {
  const CusTallContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.23,
      height: (MediaQuery.of(context).size.width / 2.23)-10,
      decoration: BoxDecoration(
        boxShadow: const [BoxShadow(color: Color.fromARGB(150, 0, 0, 0),blurRadius: 5,offset: Offset(-4, 10),spreadRadius: -10,)],
        borderRadius: BorderRadius.circular(1.25)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: (MediaQuery.of(context).size.width / 2.23)/1.9,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/the_news.png'),
                    fit: BoxFit.fill)),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromRGBO(240, 240, 240, 10), Colors.white],
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter),
            ),
            padding: const EdgeInsets.only(top: 5, right: 5),
            height: ((MediaQuery.of(context).size.width / 2.23)/1.9)-20,
            // width: MediaQuery.of(context).size.width / 2.23,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // crossAxisAlignment: WrapCrossAlignment.center,
                  // spacing: 4,
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
    );
  }
}
