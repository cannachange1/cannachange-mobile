import 'dart:async';

import 'package:cannachange/store/dashboard/dashboard_state.dart';
import 'package:cannachange/store/personal_data_state/personal_data_state.dart';
import 'package:cannachange/ui/widgets/buttons/main_button.dart';
import 'package:cannachange/ui/widgets/rounded_text_input.dart';
import 'package:cannachange/ui/widgets/search_box.dart';
import 'package:cannachange/values/values.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SearchDispensaryPage extends StatefulWidget {
  const SearchDispensaryPage({Key? key}) : super(key: key);

  @override
  State<SearchDispensaryPage> createState() => _SearchDispensaryPageState();
}

class _SearchDispensaryPageState extends State<SearchDispensaryPage> {
  final Completer<GoogleMapController> _controller = Completer();
  TextEditingController searchController = TextEditingController();

  // static const CameraPosition _kGooglePlex = CameraPosition(
  //   target: LatLng(37.42796133580664, -122.085749655962),
  //   zoom: 14.4746,
  // );

  // static const CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (defaultTargetPlatform == TargetPlatform.android) {
      AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SearchBox(
              textEditingController: searchController,
              hintText: 'Zip code, city or name',
            ),
            // GoogleMap(
            //   mapType: MapType.hybrid,
            //   initialCameraPosition: _kGooglePlex,
            //   onMapCreated: (GoogleMapController controller) {
            //     _controller.complete(controller);
            //   },
            // ),
          ],
        ),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    // controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

// showModalBottomSheet(
// context: context,
// isScrollControlled: true,
// backgroundColor: Colors.transparent,
// builder: (context) => item.isOnline
// ? OnlineRetailerDescriptionDialog(
// dealModel: item,
// userHasToken: dashboardState.userHasToken,
// )
//     : RetailerDescriptionDialog(dealModel: item),
// ),
}
