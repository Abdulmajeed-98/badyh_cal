import 'package:badiyh_calendar/core/views/widgets/shimmer_widget/shimmer_image.dart';
import 'package:flutter/material.dart';

class CusTallContainer extends StatelessWidget {
  CusTallContainer(
      {super.key,
      this.image,
      this.width,
      required this.dateTxt,
      required this.authorTxt,
      required this.titleTxt,
      required this.onTap});
  void Function()? onTap;
  String? image;
  late String dateTxt, authorTxt, titleTxt;
  double? width;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: (MediaQuery.of(context).size.width / 2.23) - 10,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(1.25)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image == null
                ? ShimmerContainer()
                : Container(
                    height: (MediaQuery.of(context).size.width / 2.23) / 1.9,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(2.5)),
                        image: DecorationImage(
                            image: image == null
                                ? AssetImage('assets/images/the_news.png')
                                : NetworkImage(image!),
                            fit: BoxFit.cover)),
                  ),
            Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(2.5)),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(150, 0, 0, 0),
                    blurRadius: 5,
                    offset: Offset(0, 5),
                    spreadRadius: -5,
                  )
                ],
                gradient: LinearGradient(
                    colors: [Color.fromRGBO(240, 240, 240, 10), Colors.white],
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter),
              ),
              padding: EdgeInsets.only(top: 5, right: 5, left: 5),
              height: ((MediaQuery.of(context).size.width / 2.23) / 1.9) - 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.calendar_today,
                            size: 10,
                            color: Color(0xFF939393),
                          ),
                          Text(dateTxt,
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      )),
                      Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.person_outline_rounded,
                            size: 12,
                            color: Color(0xFF939393),
                          ),
                          Text(
                            authorTxt,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(titleTxt,
                  maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
