import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:auto_route/auto_route.dart';
import 'package:cannachange/model/dispensary/dispensary_model.dart';
import 'package:cannachange/values/values.dart';
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
    await _addMarker(
        widget.dispensaryModel.latitude!, widget.dispensaryModel.longitude!);
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
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: screenHeight(context) * .65,
                decoration: BoxDecoration(
                  color: AppColors.secondAccent,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 10,
                      color: darkGrey.withOpacity(.25),
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 20,
                      decoration: const BoxDecoration(
                        color: AppColors.secondAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Address',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                widget.dispensaryModel.address1!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                widget.dispensaryModel.address2!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                'Working hours',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Open at ${widget.dispensaryModel.startHour!}',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'Close at ${widget.dispensaryModel.endHour!}',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GoogleMap(
                          markers: Set<Marker>.of(markers.values),
                          initialCameraPosition: CameraPosition(
                            target: LatLng(
                              widget.dispensaryModel.latitude ?? 0.0,
                              widget.dispensaryModel.longitude ?? 0.0,
                            ),
                            zoom: 14.4746,
                          ),
                          onMapCreated: _controller.complete,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
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
