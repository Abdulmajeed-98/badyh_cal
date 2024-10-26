import 'package:badiyh_calendar/core/constants/http_urls.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebScreen extends StatelessWidget {
  WebScreen({super.key});
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
              // Positioned(
              //   left: 10,
              //   top: 15,
              //   child: Container(
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(2.5),
              //           color: Color.fromRGBO(15, 15, 15, 1)),
              //       child: CusBackButton()),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
