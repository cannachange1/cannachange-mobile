import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:cannachange/router.gr.dart';
import 'package:cannachange/ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../store/personal_data_state/personal_data_state.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final personalDataState = GetIt.I<PersonalDataState>();
  WebViewController? _controller;
  BuildContext? fastlinkViewContext;

  String fastLinkURL = "";
  String accessToken = "";
  String extraParams = "";

  var EventsInfoMap = [];

  @override
  Widget build(BuildContext context) {
    fastlinkViewContext = context;
    // final FastLinkViewArguments routeParams =
    //     ModalRoute.of(context).settings.arguments as FastLinkViewArguments;

    fastLinkURL = personalDataState.aeroPayModel!.fastlinkURL!;
    accessToken = personalDataState.aeroPayModel!.token!;
    extraParams = "configName=Aggregation&intentUrl=yodlee://backtofastlink";

    return Scaffold(
      appBar: CustomAppBar(
        showBackButton: true,
      ),
      body: WebView(
        initialUrl: 'about:blank',
        javascriptMode: JavascriptMode.unrestricted,
        javascriptChannels: Set.from([
          JavascriptChannel(
              name: 'YWebViewHandler',
              onMessageReceived: (JavascriptMessage eventData) {
                _handleEventsFromJS(eventData.message);
              })
        ]),
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadFastLink();
        },
      ),
    );
  }

  _loadFastLink() async {
    String _htmlString = '''<html>
		<body>
			<form name="fastlink-form" action="$fastLinkURL" method="POST">
				<input name="accessToken" value="Bearer $accessToken" hidden="true" />
				<input name="extraParams" value="$extraParams" hidden="true" />
			</form>
			<script type="text/javascript">
				window.onload = function () {
					document.forms["fastlink-form"].submit();
				}
			</script>
		</body>
		</html>''';
    _controller!.loadUrl(Uri.dataFromString(_htmlString,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }

  _handleEventsFromJS(message) async {
    Map<String, dynamic> eventData = jsonDecode(message);

    print('asdasdasdasd       $eventData');
    EventsInfoMap.add(eventData);
    if (eventData["type"] == "OPEN_EXTERNAL_URL") {
      String url = eventData["data"]["url"];
      _launchURL(url);
    }
    if (eventData["type"] == "BANK_OAUTH_URL") {
      String url = eventData["data"]["url"];
      _launchURL(url);
    }

    if (eventData["type"] == "POST_MESSAGE") {
      String action = eventData["data"]["action"];

      if (action == "exit") {
        print('exaaaaaaaaavvvvvv $EventsInfoMap');
        await AutoRouter.of(context).replace(const DashboardRoute());
      }
    }
  }

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      print('Could not launch $url');
    }
  }
}
