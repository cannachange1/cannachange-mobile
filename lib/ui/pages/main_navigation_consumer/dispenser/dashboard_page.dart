import 'package:cannachange/store/dashboard/dashboard_state.dart';
import 'package:cannachange/ui/pages/main_navigation_consumer/dispenser/home_page.dart';
import 'package:cannachange/ui/pages/main_navigation_consumer/dispenser/settings_page.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../helpers/notification_helper.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  final dashboardState = GetIt.I<DashboardState>();
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    setUpNotifications();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _controller,
        children: const [
          HomePage(),
          SettingsPage(),
        ],
      ),
      bottomNavigationBar: TabBar(
        labelColor: AppColors.secondAccent,
        unselectedLabelColor: AppColors.secondAccent,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorWeight: 2,
        indicatorPadding: const EdgeInsets.only(bottom: 80),
        labelPadding: const EdgeInsets.only(bottom: 10),
        indicatorColor: AppColors.secondAccent,
        onTap: (index) {},
        controller: _controller,
        tabs: const [
          Tab(
              text: 'Home',
              icon: Icon(
                Icons.home,
                color: AppColors.secondAccent,
              )),
          Tab(
              text: 'Settings',
              icon: Icon(
                Icons.settings,
                color: AppColors.secondAccent,
              )),
        ],
      ),
    );
  }

  setUpNotifications() async {
    await PushNotificationService().setupInteractedMessage();
  }
}
