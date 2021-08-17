import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gtbankapp/main.dart';
import 'package:gtbankapp/btmnavigation.dart';
import 'package:gtbankapp/gtlocate.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => HomeScreen(),
          '/gtlocate': (context) => Gtlocate(),
          '/btmnavigation': (context) => Btmnavigation(currentIndex),
        },
      ),
    );

class Twitter extends StatefulWidget {
  @override
  _TwitterState createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: 'https://twitter.com/gtbank',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.deepOrange[600],
      ),
    );
  }
}
