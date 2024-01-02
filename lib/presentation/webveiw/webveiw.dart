import 'package:flutter/material.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';

String weblink = "";

class WebViewhelper extends StatefulWidget {
  final String stringurl;
  const WebViewhelper(this.stringurl);

  @override
  _WebViewExampleState createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebViewhelper> {
  @override
  void initState() {
    weblink = widget.stringurl;
    super.initState();
  }

  @override
  void dispose() {
    weblink = "";
    _controller;

    super.dispose();
  }

  final PlatformWebViewController _controller = PlatformWebViewController(
    const PlatformWebViewControllerCreationParams(),
  )..loadRequest(
      LoadRequestParams(
        uri: Uri.parse(weblink),
      ),
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 44, 44, 44),
      appBar: AppBar(
        title: const Text('WebView'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: PlatformWebViewWidget(
              PlatformWebViewWidgetCreationParams(controller: _controller))
          .build(context),
    );
  }
}
