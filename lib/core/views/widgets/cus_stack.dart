import 'package:flutter/material.dart';

class CusStack extends StatelessWidget {
  const CusStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          // width: MediaQuery.of(context).size.width / 2.23,
          // height: (MediaQuery.of(context).size.width / 2.23),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(1.25)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: (MediaQuery.of(context).size.width / 4) ,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage('assets/images/the_news.png'),
                        fit: BoxFit.fill)),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -15,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(150, 0, 0, 0),
                  blurRadius: 4,
                  blurStyle: BlurStyle.normal,
                  offset: Offset(0, 4),
                  spreadRadius: -2,
                )
              ],
              gradient: LinearGradient(
                  colors: [Color.fromRGBO(240, 240, 240, 10), Colors.white],
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter),
            ),
            padding: EdgeInsets.only(top: 5,left: 10,right: 10),
            height: 42,
            width: (MediaQuery.of(context).size.width / 2.23) - 20,
            child: Column(
              children: [
                Text('مؤسسة البادية للتنمية',
                    style: TextStyle(fontFamily: 'Tajawal',fontSize: 12)),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 8,
                    ),
                    Text(
                      '2024.12ديسمبر',
                      style: TextStyle(fontFamily: 'Tajawal', fontSize: 8),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.person_outline_rounded,
                      size: 10,
                    ),
                    Text('عمر عيضه',
                        style: TextStyle(fontFamily: 'Tajawal', fontSize: 8)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
