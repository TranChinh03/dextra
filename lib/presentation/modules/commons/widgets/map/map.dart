import 'dart:async';
import 'dart:convert';

import 'package:dextra/domain/entities/camera.dart';
import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/view_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/screen-container/screen_container.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  final Camera? selectedCam;
  final LatLng? location;
  final List<Camera>? cameraList;
  const MapSample(
      {super.key, this.cameraList, this.selectedCam, this.location});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  late List<LatLng> cameras;
  bool _isIconLoaded = false;

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  BitmapDescriptor? _customIcon;
  LatLng? _selectedMarkerPosition;
  Offset? _infoWindowPosition;
  Camera? _selectedCam;

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

  void didUpdateWidget(covariant MapSample oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Zoom to new location when it changes
    if (widget.location != oldWidget.location) {
      _goToCameraPos(widget.location);
      _getInforWindow(widget.location!,
          widget.selectedCam!); // Update the info window position
    }
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
        // infoWindow: InfoWindow(title: camera.name),
        onTap: () {
          // Convert marker's LatLng to screen coordinates
          _getInforWindow(position, camera);
          _goToCameraPos(position);
        },
      );
    }).toSet();
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

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
        body: Stack(children: <Widget>[
          GoogleMap(
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
            onTap: (LatLng position) {
              setState(() {
                _selectedMarkerPosition = null;
                _infoWindowPosition = null;
              });
            },
          ),
          if (_selectedMarkerPosition != null && _infoWindowPosition != null)
            Positioned(
              left: _infoWindowPosition!.dx,
              top: _infoWindowPosition!.dy,
              child: Container(
                padding: EdgeInsets.all(AppSpacing.rem125.w),
                decoration: BoxDecoration(
                  color: colors.white,
                  borderRadius: BorderRadius.circular(AppBorderRadius.l),
                  boxShadow: [
                    BoxShadow(
                      color: colors.black.withValues(alpha: 0.1),
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonImage(
                      width: AppSpacing.rem3375.w,
                      imageUrl:
                          "http://localhost:8002/cameras/image/${_selectedCam?.privateId ?? ""}",
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: AppSpacing.rem100.h),
                    CommonText(
                      _selectedCam?.name ?? "Camera Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonText(
                          DateFormat('hh:mm:ss a').format(
                              _selectedCam?.lastModified ?? DateTime.now()),
                          style: TextStyle(
                              fontSize: AppFontSize.xxxs,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          width: AppSpacing.rem250.w,
                        ),
                        ViewButton(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ]),
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
      CameraPosition(target: pos, zoom: 13),
    ));
  }

  void _getInforWindow(LatLng position, Camera camera) async {
    final GoogleMapController controller = await _controller.future;
    final screenCoordinate = await controller.getScreenCoordinate(position);
    setState(() {
      _selectedMarkerPosition = position;
      _infoWindowPosition = Offset(
          screenCoordinate.x.toDouble(), screenCoordinate.y.toDouble() - 250);
      _selectedCam = camera;
    });
  }
}
