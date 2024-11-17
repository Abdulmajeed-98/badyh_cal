import 'package:flutter/material.dart';

class CusDonateButton extends StatelessWidget {
  const CusDonateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      },
      child: Container(
        width: 80,
        height: 50,
        decoration: BoxDecoration(
          color: Theme.of(context).hoverColor,
          borderRadius: BorderRadius.circular(2.5)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 20,
              width: 20,
              child: Image.asset("assets/images/kindness.png",color: Colors.white,),
      
            ),
            Text('تبرع'),
          ],
        ),
      ),
    );
  }
}