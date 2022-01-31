import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';
import 'dart:io';

class Webview extends StatefulWidget {
  const Webview({Key? key}) : super(key: key);

  @override
  _WebviewState createState() => _WebviewState();
}

class _WebviewState extends State<Webview> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Builder(
          builder: (BuildContext context) {
            return WebView(
              // Change your desire Url
              initialUrl: 'https://flutter.dev',
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController) {
                _controller.complete(webViewController);
              },
              onProgress: (int progress) {
                // ignore: avoid_print
                print('Application is loading (progress : $progress%)');
              },
            );
          },
        ),
      ),
    );
  }
}
