import 'package:badiyh_calendar/core/views/widgets/cus_back_button.dart';
import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Stack(
            alignment: Alignment.topLeft,
            children: [
              Center(
                child: Text('هذه الصفحة لم تعد موجودة !',style: Theme.of(context).textTheme.titleLarge,),
              ),
              CusBackButton(color: Colors.black,),
            ],
          ),
        ),
      ),
    );
  }
}