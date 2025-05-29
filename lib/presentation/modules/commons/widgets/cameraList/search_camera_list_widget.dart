import 'dart:async';

import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/entities/camera.dart';
import 'package:dextra/domain/usecases/camera/queries/search_cameras/search_camras_query.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/bloc/camera/camera_bloc.dart';
import 'package:dextra/presentation/modules/commons/bloc/search/search_bloc.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/camera_list_item.dart';
import 'package:dextra/presentation/modules/commons/widgets/commonImage/common_image.dart';
import 'package:dextra/presentation/modules/commons/widgets/dialog/image_dialog.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/search_box.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/simpleDropdown.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/font/app_font_weight.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:number_pagination/number_pagination.dart';

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
        currentPage = 1;
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
        currentPage = 1;
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

  @override
  void initState() {
    super.initState();
    _searchBloc.add(
      SearchCamerasEvent(
        query: SearchCamerasQuery(
          cameraName: "",
          district: "",
        ),
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
          print("Search cameras: ${searchCameras.length}");

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
                      itemBuilder: (context, index) {
                        if (index + (currentPage - 1) * 20 >=
                            searchCameras.length) {
                          return const SizedBox();
                        }
                        final camera =
                            searchCameras[index + (currentPage - 1) * 20];

                        return Padding(
                          padding: EdgeInsets.all(AppSpacing.rem350.h),
                          child: CameraListItem(
                            onPressed: () => {
                              setState(() {
                                _selectedCam = camera;
                              }),
                              showDialog(
                                  context: context,
                                  builder: (context) => ImageDialog(
                                        selectedCam: camera,
                                      ))
                            },
                            cameraId: camera.privateId,
                            onTap: () {
                              final lat = camera.loc!.coordinates![1];
                              final lng = camera.loc!.coordinates![0];
                              widget.isCliked(
                                LatLng(lat, lng),
                                camera,
                              );
                              print("from search cam list: $lat, $lng");
                              widget.scrollToTop?.call();
                              // _currentPos = LatLng(lat, lng);
                              // _selectedCam = camera;
                            },
                            cammeName: camera.name,
                            dist: camera.dist,
                            imgUrl: camera.liveviewUrl,
                          ),
                        );
                      },
                      itemCount: state.resultsCam.length < 20
                          ? state.resultsCam.length
                          : 20,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics()),
                ),
              ],
              if (searchCameras.isEmpty || state.apiStatus == ApiStatus.loading)
                SizedBox()
              else
                NumberPagination(
                  onPageChanged: (int pageNumber) {
                    setState(() {
                      currentPage = pageNumber;
                    });
                  },
                  visiblePagesCount: 5,
                  totalPages: searchCameras.length ~/ 20 +
                      (searchCameras.length % 20 == 0 ? 0 : 1),
                  currentPage: currentPage,
                ),
            ],
          );
        },
      ),
    );
  }
}
