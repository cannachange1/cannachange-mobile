
import 'package:cannachange/store/dashboard/dashboard_state.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final dashboardState = GetIt.I<DashboardState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainBlueColor,
        title: Observer(
          builder: (_) => RichText(
            text: TextSpan(
              text: 'Big Fleet Organization: ',
              style: const TextStyle(
                  color: AppColors.lightGreenColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 20),
              children: <TextSpan>[
                TextSpan(
                    text: dashboardState.selectedPageName,
                    style: const TextStyle(
                        color: AppColors.lightGrayColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 20)),
              ],
            ),
          ),
        ),
      ),
      body: Observer(
        builder: (_) => Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // SideNavigationMenu(),
            // Expanded(
            //   child: PageView(
            //     physics: const NeverScrollableScrollPhysics(),
            //     controller: dashboardState.pageNavigationController,
            //     children: [
            //       DemoWidget(selectedPageName: dashboardState.selectedPageName),
            //       const SessionsPage(),
            //       const DriverPage(),
            //       DemoWidget(selectedPageName: dashboardState.selectedPageName),
            //       DemoWidget(selectedPageName: dashboardState.selectedPageName),
            //       DemoWidget(selectedPageName: dashboardState.selectedPageName),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
