import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:auto_route/auto_route.dart';
import 'package:cannachange/model/dispensary/dispensary_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' hide MapType;
import 'package:url_launcher/url_launcher.dart';

import '../../../app_theme.dart';
import '../../../helpers/overlay_helper.dart';
import '../../../helpers/screen_size_accessor.dart';

class DispensaryDescriptionDialog extends StatefulWidget {
  final DispensaryModel dispensaryModel;

  const DispensaryDescriptionDialog({
    required this.dispensaryModel,
    Key? key,
  }) : super(key: key);

  @override
  _DispensaryDescriptionDialogState createState() =>
      _DispensaryDescriptionDialogState();
}

class _DispensaryDescriptionDialogState
    extends State<DispensaryDescriptionDialog> with WidgetsBindingObserver {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};

  BitmapDescriptor? pinLocationIcon;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    setCustomMapPin();
  }

  Future<void> setCustomMapPin() async {
    final icon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(50, 50)),
      'assets/icons/ic_map_pin.png',
    );
    setState(() {
      pinLocationIcon = icon;
    });
    await _addMarker(widget.dispensaryModel.latitude!, widget.dispensaryModel.longitude!);
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    final data = await rootBundle.load(path);
    final codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    final fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  Future<void> _addMarker(tmp_lat, tmp_lng) async {
    const markerIdVal = 'pin';
    const markerId = MarkerId(markerIdVal);
    final markerIcon =
        await getBytesFromAsset('assets/icons/ic_map_pin.png', 200);

    // creating a new MARKER
    final marker = Marker(
      icon: BitmapDescriptor.fromBytes(markerIcon),
      markerId: markerId,
      position: LatLng(tmp_lat, tmp_lng),
      // infoWindow: InfoWindow(
      //     title: describeEnum(widget.dispensaryModel.retailerType!),
      //     snippet: widget.dealModel.businessName),
    );

    setState(() {
      // adding a new marker to map
      markers[markerId] = marker;
    });
  }

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // GestureDetector(
          //   onTap: AutoRouter.of(context).pop,
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 16, bottom: 20),
          //     child: SvgPicture.asset(
          //       'assets/icons/ic_back.svg',
          //       height: 50,
          //     ),
          //   ),
          // ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: screenHeight(context) * .85,
                decoration: BoxDecoration(
                  color: brightBlueColor,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 10,
                      color: darkGrey.withOpacity(.25),
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: ClipOval(
                              child: Image.network(
                                widget.dispensaryModel.image!,
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                widget.dispensaryModel.name!,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800,
                                    color: textBlueColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'sdf',
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w900,
                                  color: orangeColor),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            // Expanded(
                            //   child: Text(
                            //     widget.dealModel.conditions,
                            //     textAlign: TextAlign.right,
                            //     maxLines: 2,
                            //     overflow: TextOverflow.ellipsis,
                            //     style: const TextStyle(
                            //       fontSize: 14,
                            //       color: greyTextColor,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          height: 180,
                          child: GoogleMap(
                            markers: Set<Marker>.of(markers.values),
                            initialCameraPosition: CameraPosition(
                              target: LatLng(
                                widget.dispensaryModel.latitude!,
                                widget.dispensaryModel.longitude!,
                              ),
                              zoom: 14.4746,
                            ),
                            onMapCreated: _controller.complete,
                          ),
                        ),
                      ),
                      const Expanded(
                          child: SizedBox(
                        height: 20,
                      )),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(
                      //       horizontal: 20, vertical: 20),
                      //   child: Center(
                      //     child: Text(
                      //       widget.dealModel.information ?? '',
                      //       textAlign: TextAlign.center,
                      //       maxLines: 3,
                      //       overflow: TextOverflow.ellipsis,
                      //       style: const TextStyle(color: textBlueColor),
                      //     ),
                      //   ),
                      // ),
                      // Expanded(
                      //   flex: 2,
                      //   child: Stack(
                      //     children: [
                      //       Positioned(
                      //         bottom: 20,
                      //         right: 0,
                      //         left: 0,
                      //         child: Visibility(
                      //           visible: widget.dealModel.website != null,
                      //           child: SvgPicture.asset(
                      //             'assets/icons/ic_navigate.svg',
                      //             height: 70,
                      //             width: 70,
                      //           ),
                      //         ),
                      //       ),
                      //       Positioned(
                      //         bottom: 40,
                      //         right: 20,
                      //         left: 20,
                      //         child: GestureDetector(
                      //           onTap: () async =>
                      //               await canLaunch(widget.dealModel.website!)
                      //                   ? launchURL()
                      //                   : showCustomOverlayNotification(
                      //                       color: Colors.red,
                      //                       text: 'Invalid Web page address',
                      //                     ),
                      //           child: Text(
                      //             widget.dealModel.website ?? '',
                      //             style: const TextStyle(
                      //                 color: textBlueColor,
                      //                 fontWeight: FontWeight.w700),
                      //             textAlign: TextAlign.center,
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SizedBox(
                  height: 120,
                  child: Card(
                    elevation: 8,
                    color: white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Address',
                                  style: TextStyle(
                                      color: greyTextColor,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  widget.dispensaryModel.address1!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: greyTextColor,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  widget.dispensaryModel.address2!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: greyTextColor,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                          // Expanded(
                          //   child: GestureDetector(
                          //     onTap: () => showModalBottomSheet(
                          //       context: context,
                          //       isScrollControlled: true,
                          //       backgroundColor: Colors.transparent,
                          //       builder: (context) => MultiAnswerBottomSheet(
                          //         isDivided: true,
                          //         actionList: [
                          //           ItemMultiAnswerPopupAction(
                          //             isLastAction: true,
                          //             textColor: intBlue,
                          //             actionName: widget.dealModel.phoneNumber,
                          //             onActionPressed: () async {
                          //               await launch(
                          //                   'tel://${widget.dealModel.phoneNumber}');
                          //             },
                          //           )
                          //         ],
                          //         mainTitle: 'Call',
                          //         titleColor: textBlueColor,
                          //       ),
                          //     ),
                          //     child: Column(
                          //       mainAxisAlignment: MainAxisAlignment.center,
                          //       children: [
                          //         SvgPicture.asset('assets/icons/ic_phone.svg'),
                          //         const SizedBox(
                          //           height: 16,
                          //         ),
                          //         const Text(
                          //           'Contact',
                          //           style: TextStyle(
                          //               color: textBlueColor, fontSize: 12),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // SvgPicture.asset(
                                //     'assets/icons/ic_get_directions.svg'),
                                // const SizedBox(
                                //   height: 16,
                                // ),
                                const Text(
                                  'Get Directions',
                                  style: TextStyle(
                                      color: textBlueColor, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );

  // void launchURL() => launch(widget.dealModel.website!);
  //
  // void launchPhoneCall() => launch('tel: ${widget.dealModel.phoneNumber}');

  // Future<void> openMapsSheet(context) async {
  //   try {
  //     final coords =
  //         Coords(widget.dispensaryModel.latitude!, widget.dispensaryModel.longitude!);
  //     final title = widget.dispensaryModel.name;
  //     final availableMaps = await MapLauncher.installedMaps;
  //
  //     await showModalBottomSheet(
  //       context: context,
  //       builder: (context) {
  //         return SafeArea(
  //           child: SingleChildScrollView(
  //             child: Container(
  //               child: Wrap(
  //                 children: <Widget>[
  //                   for (var map in availableMaps)
  //                     ListTile(
  //                       onTap: () => map.showMarker(
  //                         coords: coords,
  //                         title: title,
  //                       ),
  //                       title: Text(map.mapName),
  //                       leading: SvgPicture.asset(
  //                         map.icon,
  //                         height: 30,
  //                         width: 30,
  //                       ),
  //                     ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         );
  //       },
  //     );
  //   } on Exception catch (e) {}
  // }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }
}
