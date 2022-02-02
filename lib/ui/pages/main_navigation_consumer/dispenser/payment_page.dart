import 'dart:convert';

import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  // WebViewController? _controller;
  //
  // @override
  Widget build(BuildContext context) {
    return Scaffold();
  //       appBar: AppBar(
  //         title: const Text('FastLink'),
  //       ),
  //       body: WebView(
  //         initialUrl: 'about:blank',
  //         javascriptMode: JavascriptMode.unrestricted,
  //         javascriptChannels: Set.from([
  //           JavascriptChannel(
  //               name: 'YWebViewHandler',
  //               onMessageReceived: (JavascriptMessage eventData) {
  //                 _handleEventsFromJS(eventData.message);
  //               })
  //         ]),
  //         onWebViewCreated: (WebViewController webViewController) {
  //           _controller = webViewController;
  //           _loadFastLink();
  //         },
  //       ));
  // }
  //
  // _loadFastLink() async {
  //   String _htmlString = '''<html>
  //       <body>
  //           <form name="fastlink-form" action="" method="POST">
  //               <input name="accessToken" value="Bearer " hidden="true" />
  //               <input name="extraParams" value="" hidden="true" />
  //           </form>
  //           <script type="text/javascript">
  //               window.onload = function () {
  //                   document.forms["fastlink-form"].submit();
  //               }
  //           </script>
  //       </body>
  //       </html>''';
  //   _controller!.loadUrl(Uri.dataFromString(_htmlString,
  //           mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
  //       .toString());
  // }
  //
  // _handleEventsFromJS(message) {
  //   Map<String, dynamic> eventData = jsonDecode(message);
  //
  //   //EventsInfoMap.add(eventData);
  //   if (eventData["type"] == "OPEN_EXTERNAL_URL") {
  //     String url = eventData["data"]["url"];
  //     _launchURL(url);
  //   }
  //
  //   if (eventData["type"] == "POST_MESSAGE") {
  //     String action = eventData["data"]["action"];
  //
  //     if (action == "exit") {
  //       //User has clicked the close button
  //       //You can close the WebView and navigate to the other screens
  //     }
  //   }
  // }
  //
  // _launchURL(url) async {
  //   if (await canLaunch(url)) {
  //     await launch(
  //       url,
  //       forceSafariVC: false,
  //       forceWebView: false,
  //     );
  //   } else {
  //     print('Could not launch ');
  //   }
   }
}
