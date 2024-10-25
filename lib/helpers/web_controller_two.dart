import 'package:badiyh_calendar/core/constants/http_urls.dart';
import 'package:webview_flutter/webview_flutter.dart';

var controller_two = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setNavigationDelegate(
    NavigationDelegate(
      onProgress: (int progress) {
        // Update loading bar.
      },
      onPageStarted: (String url) {
      },
      onPageFinished: (String url) {
      },
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
  ..loadRequest(Uri.parse(
    HttpUrls.WEB_VIEW))
  // "https://badyh.org/blog/%D8%A7%D9%84%D8%A7%D8%AE%D8%A8%D8%A7%D8%B1/%D8%A3%D8%AE%D8%A8%D8%A7%D8%B1-%D8%A7%D9%84%D8%A8%D8%A7%D8%AF%D9%8A%D8%A9/%D8%B2%D9%8A%D8%A7%D8%B1%D8%A9-%D9%85%D9%8A%D8%AF%D8%A7%D9%86%D9%8A%D8%A9-%D9%84%D8%B7%D9%84%D8%A7%D8%A8-%D8%A7%D9%84%D9%87%D9%86%D8%AF%D8%B3%D8%A9-%D8%A7%D9%84%D9%85%D8%AF%D9%86%D9%8A%D8%A9-%D9%88/"))
  ;