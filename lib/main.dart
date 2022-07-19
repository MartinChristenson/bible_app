import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'services/html_helper.dart';
import 'dart:convert';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

//added some comments right here, these
//are the comments
//comments version II, these are the second version of comments to test commit without branch
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bible app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Bible Knowledge'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  WebViewPlusController? _webViewPlusController;
  Set<Factory<OneSequenceGestureRecognizer>>? gestureRecognizer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: WebViewPlus(
        initialUrl: 'assets/kj_new/kj_new/index_en.htm',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          _webViewPlusController = controller;
        },
      ),
    );
  }
}
