import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class AeropayPage extends StatefulWidget {
  final String aeropayUrl;

  const AeropayPage({Key? key, required this.aeropayUrl}) : super(key: key);

  @override
  State<AeropayPage> createState() => _AeropayPageState();
}

class _AeropayPageState extends State<AeropayPage> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: widget.aeropayUrl,
    );
  }
}
