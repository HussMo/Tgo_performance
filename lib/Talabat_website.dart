import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Talabat_website extends StatefulWidget {
  const Talabat_website({Key? key}) : super(key: key);

  @override
  _Talabat_websiteState createState() => _Talabat_websiteState();
}

class _Talabat_websiteState extends State<Talabat_website> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: 'https://www.youtube.com/watch?v=lxf5_e9Ky7Q',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
