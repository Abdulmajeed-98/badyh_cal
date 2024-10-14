import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget buildShimmerEffect() {
  return Expanded(
    child: ListView.separated(
      separatorBuilder: (context, index) => index.isOdd
          ? Container(
              // height:
              // MediaQuery.of(context).size.height / 8,
              margin: EdgeInsets.symmetric(vertical: 15),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/badyh_box.png'),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(2.5),
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        margin: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/Group-5.png')),
                        ),
                      ),
                      Text(
                        'مجالات عملنا',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 22),
                    child: Text(
                      'تمثلت مجالات عمل البادية في مجالات تنموية وانسلنية اربعة\n(مجال العمل الانساني, المجال الصحي, مجال التعليم, مجال التنمية المستدامة)',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  )
                ],
              ),
            )
          : SizedBox.shrink(),
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      itemCount: 4, // Placeholder for shimmer effect, adjust as needed
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: 80, // Placeholder size
            color: Colors.grey[300],
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
        );
      },
    ),
  );
}
