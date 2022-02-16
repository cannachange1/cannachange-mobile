import 'dart:async';

import 'package:cannachange/store/map/map_state.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import '../../widgets/custom_app_bar.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  //final Completer<GoogleMapController> _controller = Completer();
  MapState mapState = MapState();

  LatLng _initialcameraposition = const LatLng(20.5937, 78.9629);
  GoogleMapController? _controller;
  Location _location = Location();

  Set<Marker> setmarkers = {};

  @override
  void initState() {
    _getLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(showBackButton: true),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(target: _initialcameraposition),
        mapType: MapType.normal,
        onMapCreated: _onMapCreated,
        myLocationEnabled: true,
        markers: setmarkers,
      ),
    );
  }

  void _getLocation() async {
    final res = await mapState.getAllDispensaries();
    for (int i = 0; i < res.length; i++) {
      if (res[i].latitude != null || res[i].latitude != 0) {
        Marker marker = Marker(
            markerId: MarkerId(i.toString()),
            position: LatLng(res[i].latitude!, res[i].longitude!));
        setmarkers.add(marker);
      }
    }
    setState(() {});
  }

  void _onMapCreated(GoogleMapController _cntlr) {
    _controller = _cntlr;
    _location.onLocationChanged.listen((l) {
      _controller!.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude!, l.longitude!), zoom: 15),
        ),
      );
    });
  }
}
