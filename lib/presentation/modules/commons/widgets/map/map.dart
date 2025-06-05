import 'dart:async';

import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/entities/camera.dart';
import 'package:dextra/presentation/assets/assets.dart';
import 'package:dextra/presentation/modules/commons/bloc/camera/camera_bloc.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/view_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/dialog/image_dialog.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:dextra/theme/font/app_font_size.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  final Camera? selectedCam;
  final LatLng? location;
  const MapSample({super.key, this.selectedCam, this.location});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final _cameraBloc = getIt.get<CameraBloc>();
  late List<LatLng> cameras;

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
  }

  Future<void> _loadCustomIcon() async {
    _customIcon = await BitmapDescriptor.asset(
      const ImageConfiguration(size: Size(48, 48)),
      Assets.png.cameraIcon.path,
    );
  }

  @override
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
    if (_customIcon == null) {
      return {};
    }
    return cameras.map((camera) {
      final lat = (camera.loc?.coordinates != null &&
              camera.loc!.coordinates!.length > 1)
          ? camera.loc!.coordinates![1]
          : 0.0;
      final lng = (camera.loc?.coordinates != null &&
              camera.loc!.coordinates!.isNotEmpty)
          ? camera.loc!.coordinates![0]
          : 0.0;
      final position = LatLng(lat, lng);
      return Marker(
        icon: _customIcon!,
        markerId: MarkerId(camera.privateId!),
        position: position,
        onTap: () {
          _getInforWindow(position, camera);
          _goToCameraPos(position);
        },
      );
    }).toSet();
  }

  @override
  Widget build(BuildContext context) {
    final colors = IAppColor.watch(context);

    return Scaffold(
      body: Stack(children: <Widget>[
        GoogleMap(
          mapType: MapType.hybrid,
          initialCameraPosition: CameraPosition(
            target: widget.location ??
                LatLng(
                  _cameraBloc.state.cameras.first.loc?.coordinates?[1] ?? 0.0,
                  _cameraBloc.state.cameras.first.loc?.coordinates?[0] ?? 0.0,
                ),
            zoom: 11,
          ),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          markers: _buildMarkers(_cameraBloc.state.cameras),
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
                    spacing: AppSpacing.rem100.w,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                        DateFormat('hh:mm:ss a').format(
                            _selectedCam?.lastModified ?? DateTime.now()),
                        style: TextStyle(
                            fontSize: AppFontSize.xxxs,
                            fontWeight: FontWeight.w300),
                      ),
                      ViewButton(
                        onPressed: () => showDialog(
                            context: context,
                            builder: (context) => ImageDialog(
                                  selectedCam: _selectedCam,
                                )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ]),
    );
  }

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
