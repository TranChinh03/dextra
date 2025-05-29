import 'dart:async';

import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/entities/camera.dart';
import 'package:dextra/domain/usecases/camera/queries/search_cameras/search_camras_query.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/bloc/camera/camera_bloc.dart';
import 'package:dextra/presentation/modules/commons/bloc/search/search_bloc.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/camera_list_item.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/search_box.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/simpleDropdown.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SearchCameraListWidget extends StatefulWidget {
  final Function(LatLng, Camera) isCliked;
  final VoidCallback? scrollToTop;
  const SearchCameraListWidget({
    super.key,
    required this.isCliked,
    this.scrollToTop,
  });

  @override
  State<SearchCameraListWidget> createState() => _SearchCameraListWidgetState();
}

class _SearchCameraListWidgetState extends State<SearchCameraListWidget> {
  int currentPage = 1;
  String searchText = "";
  String currentDistrict = "All";
  Camera? _selectedCam;

  final _searchBloc = getIt.get<SearchBloc>();
  final _cameraBloc = getIt.get<CameraBloc>();
  Timer? _debounce;

  void _onSearchTextChanged(String value) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      print('Search text changed: $value');
      setState(() {
        searchText = value;
      });
      _searchBloc.add(
        SearchCamerasEvent(
          query: SearchCamerasQuery(
            cameraName: value,
            district: currentDistrict == "All" ? "" : currentDistrict,
          ),
        ),
      );
    });
  }

  void _onDropDownChanged(String? value) {
    if (value != null) {
      print('Selected district: $value');
      setState(() {
        currentDistrict = value;
      });
      _searchBloc.add(
        SearchCamerasEvent(
          query: SearchCamerasQuery(
            cameraName: searchText,
            district: value == "All" ? "" : value,
          ),
        ),
      );
    }
  }

  void showDialogCam() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: CommonText(
          _selectedCam?.name ?? "",
          style: TextStyle(fontWeight: AppFontWeight.bold),
        ),
        content: CommonImage(
          width: AppSpacing.rem9999.w,
          imageUrl:
              "http://localhost:8002/cameras/image/${_selectedCam?.privateId ?? ""}",
          fit: BoxFit.contain,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _searchBloc,
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          final searchCameras = state.resultsCam;
          return Column(
            children: [
              Row(
                children: [
                  SearchBox(
                    onChanged: _onSearchTextChanged,
                  ),
                  SizedBox(
                    width: AppSpacing.rem300.w,
                  ),
                  Expanded(
                    child: SimpleDropdown(
                      itemsList:
                          ["All", ..._cameraBloc.state.districts].map((option) {
                        return DropdownMenuItem<String>(
                          value: option,
                          child: CommonText(option),
                        );
                      }).toList(),
                      onChanged: _onDropDownChanged,
                    ),
                  )
                ],
              ),
              if (state.apiStatus == ApiStatus.loading) ...[
                Center(
                  child: CircularProgressIndicator(),
                )
              ] else ...[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: AppSpacing.rem600),
                  child: ListView.builder(
                      itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.all(AppSpacing.rem350.h),
                            child: CameraListItem(
                              onPressed: () => {
                                setState(() {
                                  _selectedCam = searchCameras[index];
                                }),
                                showDialogCam(),
                              },
                              cameraId: searchCameras[index].privateId,
                              onTap: () {
                                final lat =
                                    searchCameras[index].loc!.coordinates![1];
                                final lng =
                                    searchCameras[index].loc!.coordinates![0];
                                widget.isCliked(
                                  LatLng(lat, lng),
                                  searchCameras[index],
                                );
                                print("from search cam list: $lat, $lng");
                                widget.scrollToTop?.call();
                                // _currentPos = LatLng(lat, lng);
                                // _selectedCam = camera;
                              },
                              cammeName: searchCameras[index].name,
                              dist: searchCameras[index].dist,
                              imgUrl: searchCameras[index].liveviewUrl,
                            ),
                          ),
                      itemCount: state.resultsCam.length < 3
                          ? state.resultsCam.length
                          : 3,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics()),
                ),
              ]
            ],
          );
        },
      ),
    );
  }
}
