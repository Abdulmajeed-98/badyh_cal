import 'package:flutter/material.dart';

class CusWideContainer extends StatelessWidget {
  CusWideContainer(
      {super.key,
      required this.onTap,
      required this.dateTxt,
      required this.authorTxt,
      required this.titleTxt,
      this.image});
  void Function()? onTap;
  String? image;
  late String dateTxt, authorTxt, titleTxt;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // width: MediaQuery.of(context).size.width / 1.08,
        // height: MediaQuery.of(context).size.height / 12,
        height: 100,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(150, 0, 0, 0),
            blurRadius: 5,
            offset: Offset(-5, 5),
            spreadRadius: -5,
          )
        ], borderRadius: BorderRadius.circular(1.25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2.23,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(2.5)),
                  image: DecorationImage(
                      image: image == null
                          ? AssetImage('assets/images/the_news.png')
                          : NetworkImage(image!),
                      fit: BoxFit.fill)),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(2.5)),
                  gradient: LinearGradient(colors: [
                    Theme.of(context).primaryColorDark,
                    Theme.of(context).primaryColorLight
                  ], begin: Alignment.topRight, end: Alignment.bottomCenter),
                ),
                padding: EdgeInsets.all(5),
                // width: MediaQuery.of(context).size.width / 2.1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 4,
                      children: [
                        Icon(
                          Icons.calendar_today,
                          size: 10,
                          color: Color(0xFF939393),
                        ),
                        Text(
                          dateTxt,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.person_outline_rounded,
                          size: 12,
                          color: Color(0xFF939393),
                        ),
                        Text(authorTxt,
                            style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      titleTxt,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
