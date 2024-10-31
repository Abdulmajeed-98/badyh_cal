import 'package:badiyh_calendar/core/constants/const_urls_img.dart';
import 'package:badiyh_calendar/core/constants/http_urls.dart';
import 'package:badiyh_calendar/core/views/widgets/cust_boxImg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebScreen extends StatelessWidget {
  WebScreen({super.key});

  const_urls_img url = const_urls_img();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Stack(
            children: [
              WebViewWidget(
                  controller: WebViewController()
                    ..setJavaScriptMode(JavaScriptMode.unrestricted)
                    ..setNavigationDelegate(
                      NavigationDelegate(
                        onProgress: (int progress) {
                          // Update loading bar.
                        },
                        onPageStarted: (String url) {},
                        onPageFinished: (String url) {},
                        onHttpError: (HttpResponseError error) {},
                        onWebResourceError: (WebResourceError error) {},
                        onNavigationRequest: (NavigationRequest request) {
                          if (request.url.startsWith(HttpUrls.WEB_VIEW)) {
                            return NavigationDecision.prevent;
                          }
                          return NavigationDecision.navigate;
                        },
                      ),
                    )
                    ..loadRequest(Uri.parse(HttpUrls.WEB_VIEW))),
              Positioned(
                left: 10,
                top: 20,
                child: Container(
                  height: 55,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.5),
                      color: Color.fromRGBO(15, 15, 15, 1)),
                  child: IconButton(
                    icon: SizedBox(
                      height: 25,
                      child: Cust_ImgBox(
                          url: url.back,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    onPressed: () {
                      Get.offNamed('/home');
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
