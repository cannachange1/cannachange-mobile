import 'package:cannachange/store/dashboard/dashboard_state.dart';
import 'package:cannachange/ui/pages/main_navigation_consumer/consumer/consumer_home_page.dart';
import 'package:cannachange/ui/pages/main_navigation_consumer/consumer/consumer_settings_page.dart';
import 'package:cannachange/ui/pages/main_navigation_consumer/consumer/search_dispensary_page.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ConsumerDashboardPage extends StatefulWidget {
  const ConsumerDashboardPage({Key? key}) : super(key: key);

  @override
  State<ConsumerDashboardPage> createState() => _ConsumerDashboardPageState();
}

class _ConsumerDashboardPageState extends State<ConsumerDashboardPage>
    with SingleTickerProviderStateMixin {
  final dashboardState = GetIt.I<DashboardState>();
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _controller,
        children: const [
          ConsumerHomePage(),
          ConsumerSettingsPage(),
          SearchDispensaryPage(),
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
              text: 'Search',
              icon: Icon(
                Icons.search,
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
}
