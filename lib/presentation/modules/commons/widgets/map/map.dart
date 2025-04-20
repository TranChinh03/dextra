import 'dart:async';
import 'dart:convert';

import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/widgets/screen-container/screen_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  late List<LatLng> cameras;
  bool _isIconLoaded = false;
  bool _isCamerasLoaded = false;

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  BitmapDescriptor? _customIcon;
  @override
  void initState() {
    super.initState();
    _loadCustomIcon();

    loadCameraLocations().then((data) {
      setState(() {
        cameras = data;
        _isCamerasLoaded = true;
      });
    });
  }

  static const CameraPosition _initCam = CameraPosition(
    target: LatLng(10.80498476893258, 106.75270736217499),
    zoom: 11,
  );

  // static const CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);

  // final List<LatLng> nearbyMarkers = [
  //   LatLng(10.815210, 106.755901), // Vincom Thu Duc
  //   LatLng(10.800520, 106.744910), // Thủ Đức Market
  //   LatLng(10.810689, 106.767721), // HCMUTE
  //   LatLng(10.795110, 106.749480), // Chợ Linh Trung
  //   LatLng(10.808992, 106.737377), // Khu công nghệ cao
  //   LatLng(10.820100, 106.745500), // Coopmart
  //   LatLng(10.803200, 106.759100), // Nhà thiếu nhi
  // ];

  Future<void> _loadCustomIcon() async {
    _customIcon = await BitmapDescriptor.asset(
      const ImageConfiguration(size: Size(48, 48)),
      Assets.png.cameraIcon.path,
    );

    setState(() {
      _isIconLoaded = true;
    });
  }

  Future<List<LatLng>> loadCameraLocations() async {
    final String response =
        await rootBundle.loadString('assets/json/camera_results.json');
    final Map<String, dynamic> jsonData = json.decode(response);

    final List<dynamic> cameras = jsonData['data']['cameras'];
    List<LatLng> locations = cameras.map<LatLng>((camera) {
      final coords = camera['loc']['coordinates'];
      return LatLng(coords[1], coords[0]); // [lat, lng]
    }).toList();

    return locations;
  }

  Set<Marker> _buildMarkers() {
    return cameras.asMap().entries.map((entry) {
      final idx = entry.key;
      final position = entry.value;

      return Marker(
          icon: _customIcon!,
          markerId: MarkerId('marker_$idx'),
          position: position,
          infoWindow: InfoWindow(title: 'Marker ${idx + 1}'),
          onTap: () => _goToCameraPos(position));
    }).toSet();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      isShowLoading: _isIconLoaded == false || _isCamerasLoaded == false,
      child: Scaffold(
        body: _isIconLoaded && _isCamerasLoaded
            ? GoogleMap(
                mapType: MapType.hybrid,
                initialCameraPosition: _initCam,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
                markers: _buildMarkers(),
              )
            : const Center(child: CircularProgressIndicator()),
        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: _goToTheLake,
        //   label: const Text('To the lake!'),
        //   icon: const Icon(Icons.directions_boat),
        // ),
      ),
    );
  }

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }

  Future<void> _goToCameraPos(pos) async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(target: pos, zoom: 15),
    ));
  }
}
