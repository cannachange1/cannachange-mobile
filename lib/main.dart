import 'package:flutter/cupertino.dart' hide Router;
import 'package:flutter/material.dart' hide Router;
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:overlay_support/overlay_support.dart';

import 'app_theme.dart';
import 'providers/get_it.dart';
import 'router.gr.dart' as app_router;

Future<void> main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  registerGetIt();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = app_router.FlutterRouter();

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp(
        builder: (context, widget) => MaterialApp.router(
            routeInformationParser: _appRouter.defaultRouteParser(),
            routerDelegate: _appRouter.delegate()),
        debugShowCheckedModeBanner: false,
        title: 'cannachange',
        theme: buildLightTheme(),
      ),
    );
  }
}
