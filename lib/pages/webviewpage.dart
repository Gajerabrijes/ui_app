import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({Key? key}) : super(key: key);

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl:
          "https://www.swiggy.com/?utm_source=Google-Sok&utm_medium=CPC&utm_campaign=google_search_sok_food_na_narm_order_web_m_web_clubbedcities_neev_brand_newuser_v3_ei_brand_em&gclid=EAIaIQobChMIgoiYid-q-QIVBXmLCh378wx1EAAYASAAEgLwhvD_BwE",
    ));
  }
}
