import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: (MediaQuery.of(context).size.width / 2.23) / 1.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(2.5)),
          color: Colors.grey[300],  // Add a solid color as a placeholder
        ),
      ),
    );
  }
}
