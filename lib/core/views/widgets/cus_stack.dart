import 'package:flutter/material.dart';

class CusStack extends StatelessWidget {
  CusStack({super.key,
      this.image,
      required this.dateTxt,
      required this.nameTxt,
      required this.titleTxt,
      required this.onTap});
      void Function()? onTap;
  String? image;
  late String dateTxt, nameTxt, titleTxt;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          Container(
            // width: MediaQuery.of(context).size.width / 2.23,
            height: (MediaQuery.of(context).size.width / 2.23),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1.25)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: (MediaQuery.of(context).size.width / 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.5),
                      image: DecorationImage(
                          image: image == null? AssetImage('assets/images/badyh_complex.png'):NetworkImage(image!),
                          fit: BoxFit.fill)),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1.25),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(150, 0, 0, 0),
                    blurRadius: 2,
                    offset: Offset(8, 5),
                    spreadRadius: -8,
                  ),
                  BoxShadow(
                    color: const Color.fromARGB(150, 0, 0, 0),
                    blurRadius: 2,
                    offset: Offset(-8, 5),
                    spreadRadius: -8,
                  )
                ],
                gradient: LinearGradient(
                    colors: [Color.fromRGBO(240, 240, 240, 10), Colors.white],
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter),
              ),
              padding: EdgeInsets.only(top: 5, left: 10, right: 10),
              height: 42,
              width: (MediaQuery.of(context).size.width / 2.23) - 14,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Text(
                      maxLines: 1,
                      titleTxt,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 8,
                      ),
                      Text(
                        dateTxt,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
      
                      Icon(
                        Icons.person_outline_rounded,
                        size: 10,
                      ),
                      Text(
                        nameTxt,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
