import 'dart:convert';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cannachange/store/store_state/store_state.dart';
import 'package:cannachange/values/values.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../app_theme.dart';
import '../../../helpers/overlay_helper.dart';
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

  //LoadingState loadingState = LoadingState();
  final dio = GetIt.I<Dio>();
  StoreState storeState = StoreState();
  bool isDetected = false;

  @override
  void reassemble() {
    super.reassemble();
    // if (Platform.isAndroid) {
    //   controller!.pauseCamera();
    // } else if (Platform.isIOS) {
    //   controller!.resumeCamera();
    // }
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
        child: Observer(
          builder: (_) => Stack(
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
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) async {
      if (!isDetected) {
        await dashboardState.scanQr(scanData.code!);
        //TODO change it to activatedCode!=null
        if (dashboardState.scannedUser!.point! > 25) {
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
                    //  personalState.addPoints(points, code);
                  },
                ),
                ItemMultiAnswerPopupAction(
                  isLastAction: true,
                  textColor: intBlue,
                  actionName: 'Redeem Points',
                  onActionPressed: () async {
                    //   personalState.approvePointsRedeem(id);
                  },
                )
              ],
              mainTitle: 'Select the Action',
              titleColor: textBlueColor,
            ),
          );
        }
        await AutoRouter.of(context).pop();
      }
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
//
// Future<void> sendQR(String qr) async {
//   isDetected = true;
//   storeState.changeState(StoreStates.loading);
//   try {
//     await dio.post('/mobile/checkin', data: {
//       'qrCode': qr,
//     });
//     // showDialog(
//     //     context: context,
//     //     useRootNavigator: false,
//     //     builder: (context) =>
//     //     const RegistrationDetailsWorkingHoursDialog());
//
//     storeState.changeState(StoreStates.success);
//   } on DioError catch (e) {
//     final Map<String, dynamic> map = jsonDecode(e.response!.data);
//     showCustomOverlayNotification(
//       color: Colors.red,
//       text: map['title'],
//     );
//     storeState.changeState(StoreStates.error);
//     await AutoRouter.of(context).pop();
//     return Future.error(e.response!.data['title']);
//   }
// }
}
