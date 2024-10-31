import 'package:dio/dio.dart';

class ContactVM {
  void sendEmail() async {
    var dio = Dio();
    try {
      Response response = await dio.post(
        'https://your-api-endpoint.com/send-email',
        data: {'email': 'badiyh@gmail.com'},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      // if (response.statusCode == 200) {
      //   print('Email sent successfully!');
      // } else {
      //   print('Failed to send email. Status code: ${response.statusCode}');
      // }
    } catch (e) {
      // print('Error sending email: $e');
    }
  }
}
