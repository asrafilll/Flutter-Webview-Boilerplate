import 'package:flutter/material.dart';
import 'package:flutter_webview_boilerplate/webview.dart';

void main() => runApp(const MainApp());

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Webview(),
    );
  }
}
