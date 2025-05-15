import 'dart:async';
import 'dart:convert';

import 'package:dextra/domain/entities/camera.dart';
import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/widgets/screen-container/screen_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  final LatLng? location;
  final List<Camera>? cameraList;
  const MapSample({super.key, this.location, this.cameraList});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  late List<LatLng> cameras;
  bool _isIconLoaded = false;

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  BitmapDescriptor? _customIcon;
  @override
  void initState() {
    super.initState();
    _loadCustomIcon();

    // loadCameraLocations().then((data) {
    //   setState(() {
    //     cameras = data;
    //   });
    // });
  }

  static const CameraPosition _initCam = CameraPosition(
    target: LatLng(10.80498476893258, 106.75270736217499),
    zoom: 11,
  );

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

  Set<Marker> _buildMarkers(List<Camera> cameras) {
    // return cameras.asMap().entries.map((entry) {
    //   final idx = entry.key;
    //   final position = entry.value;

    //   return Marker(
    //       icon: _customIcon!,
    //       markerId: MarkerId('marker_$idx'),
    //       position: position,
    //       infoWindow: InfoWindow(title: 'Marker ${idx + 1}'),
    //       onTap: () => _goToCameraPos(position));
    // }).toSet();
    return cameras.map((camera) {
      final position = LatLng(
        camera.loc!.coordinates[1],
        camera.loc!.coordinates[0],
      );
      return Marker(
        icon: _customIcon!,
        markerId: MarkerId(camera.privateId!),
        position: position,
        infoWindow: InfoWindow(title: camera.name),
        onTap: () => _goToCameraPos(position),
      );
    }).toSet();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      // isShowLoading: _isIconLoaded == false || _isCamerasLoaded == false,
      // child: Scaffold(
      //   body: _isIconLoaded && _isCamerasLoaded
      //       ? GoogleMap(
      //           mapType: MapType.hybrid,
      //           initialCameraPosition: widget.location != null
      //               ? CameraPosition(
      //                   target: widget.location!,
      //                   zoom: 11,
      //                 )
      //               : _initCam,
      //           onMapCreated: (GoogleMapController controller) {
      //             _controller.complete(controller);
      //           },
      //           markers: _buildMarkers(),
      //         )
      //       : const Center(child: CircularProgressIndicator()),
      //   // floatingActionButton: FloatingActionButton.extended(
      //   //   onPressed: _goToTheLake,
      //   //   label: const Text('To the lake!'),
      //   //   icon: const Icon(Icons.directions_boat),
      //   // ),
      // ),
      isShowLoading: _isIconLoaded == false,
      child: Scaffold(
        body: GoogleMap(
          mapType: MapType.hybrid,
          initialCameraPosition: widget.location != null
              ? CameraPosition(
                  target: widget.location!,
                  zoom: 11,
                )
              : _initCam,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          markers: _buildMarkers(widget.cameraList ?? []),
        ),
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
