import 'package:badiyh_calendar/helper/wep_path.dart';
import 'package:webview_flutter/webview_flutter.dart';

final controller = WebViewController()
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
        if (request.url.startsWith('https://www.youtube.com/')) {
          print(WepPath.url);
          return NavigationDecision.prevent;
        }
                  print(WepPath.url);

        return NavigationDecision.navigate;

      },
    ),
  )
  ..loadRequest(Uri.parse(WepPath.url.value));