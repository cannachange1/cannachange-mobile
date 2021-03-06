import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cannachange/store/store_state/store_state.dart';
import 'package:cannachange/ui/widgets/dialogs/add_points_dialog.dart';
import 'package:cannachange/values/values.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../app_theme.dart';
import '../../../store/dashboard/dashboard_state.dart';
import '../../../store/personal_data_state/personal_data_state.dart';
import '../../widgets/dialogs/multi_answer_bottom_sheet.dart';
import '../../widgets/items/item_multianswer_popup_action.dart';

class QrScannerView extends StatefulWidget {
  const QrScannerView({Key? key}) : super(key: key);

  @override
  _QrScannerViewState createState() => _QrScannerViewState();
}

class _QrScannerViewState extends State<QrScannerView> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  final dashboardState = GetIt.I<DashboardState>();
  final personalState = GetIt.I<PersonalDataState>();

  final dio = GetIt.I<Dio>();
  StoreState storeState = StoreState();
  bool isDetected = false;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: AutoRouter.of(context).pop,
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              color: textBlueColor,
            )),
        backgroundColor: AppColors.lightGrayColor,
        title: const Text(
          'QR Scanner',
          style: TextStyle(color: textBlueColor),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                const Expanded(
                  child: Center(
                    child: Text('Scanning...'),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: QRView(
                    key: qrKey,
                    onQRViewCreated: _onQRViewCreated,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) async {
      if (!isDetected) {
        isDetected = true;
        await dashboardState.scanQr(scanData.code!);
        await AutoRouter.of(context).pop();
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) => MultiAnswerBottomSheet(
            isDivided: true,
            actionList: [
              ItemMultiAnswerPopupAction(
                isLastAction: true,
                textColor: intBlue,
                actionName: 'Add Points',
                onActionPressed: () async {
                  showDialog(
                      context: context,
                      //  useRootNavigator: false,
                      builder: (context) => const AddPointsDialog()).then(
                    (value) => AutoRouter.of(context).pop(),
                  );
                },
              ),
              if (dashboardState.scannedUser!.discountCode != null)
                ItemMultiAnswerPopupAction(
                  isLastAction: true,
                  textColor: intBlue,
                  actionName: 'Redeem Points',
                  onActionPressed: () async {
                    personalState.approvePointsRedeem(
                        dashboardState.scannedUser!.pointId!);
                    AutoRouter.of(context).pop();
                  },
                )
            ],
            mainTitle: 'Select the Action',
            titleColor: textBlueColor,
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
