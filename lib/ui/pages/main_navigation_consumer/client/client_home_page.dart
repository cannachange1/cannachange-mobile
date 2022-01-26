import 'package:cannachange/helpers/screen_size_accessor.dart';
import 'package:cannachange/store/dashboard/dashboard_state.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:cannachange/ui/widgets/avatar_widget.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ClientHomePage extends StatefulWidget {
  const ClientHomePage({Key? key}) : super(key: key);

  @override
  State<ClientHomePage> createState() => _ClientHomePageState();
}

class _ClientHomePageState extends State<ClientHomePage> {
  final dashboardState = GetIt.I<DashboardState>();
  final personalDataState = GetIt.I<PersonalDataState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AvatarWidget(),
                QrImage(
                  data: "1234567890",
                  version: QrVersions.auto,
                  size: 120,
                ),
              ],
            ),
            const Text(
              'Points Earned',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w600,
              ),
            ),
            ListView.builder(itemCount: 3,
              itemBuilder: (context, position) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          'name',
                          style: TextStyle(fontSize: 22.0),
                        ),
                        Stack(
                          children: [
                            Icon(Icons.filter_none),
                            Positioned(
                              child: Text('3'),
                              right: 2,
                              top: 2,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Text(
              'Dispensary Address: ${personalDataState.dispensaryModel!.addressLine1}',
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Dispensary Hours: ${personalDataState.dispensaryModel!.workingHours}',
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 40,
            ),

          ],
        ),
      ),
    );
  }
}
