import 'package:badiyh_calendar/core/constants/wep_controller.dart';
import 'package:badiyh_calendar/helper/wep_path.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  WebViewScreen({super.key, required this.path});
  String path;
  @override
  Widget build(BuildContext context) {
    WepPath.url.value = path;
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView Example'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
