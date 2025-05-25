import 'dart:async';

import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/usecases/camera/queries/search_cameras/search_camras_query.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/bloc/search/search_bloc.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/search_box.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/simpleDropdown.dart';
import 'package:dextra/presentation/modules/commons/widgets/text/common_text.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchCameraListWidget extends StatefulWidget {
  const SearchCameraListWidget({super.key});

  @override
  State<SearchCameraListWidget> createState() => _SearchCameraListWidgetState();
}

class _SearchCameraListWidgetState extends State<SearchCameraListWidget> {
  int currentPage = 1;
  final _searchBloc = getIt.get<SearchBloc>();
  Timer? _debounce;

  final List<String> _districts = [
    "Tất cả",
    'Quận 1',
    'Quận 3',
    'Quận 4',
    'Quận 5',
    'Quận 6',
    'Quận 7',
    'Quận 8',
    'Quận 10',
    'Quận 11',
    'Quận 12',
    'Quận Bình Thạnh',
    'Quận Gò Vấp',
    'Quận Phú Nhuận',
    'Quận Tân Bình',
    'Quận Tân Phú',
    'Quận Thủ Đức',
    'Huyện Bình Chánh',
    'Huyện Củ Chi',
    'Huyện Hóc Môn',
    'Huyện Nhà Bè',
  ];

  void _onSearchTextChanged(String value) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      print('Search text changed: $value');
      _searchBloc.add(
        SearchCamerasEvent(
          query: SearchCamerasQuery(
            cameraName: value,
            district: "",
          ),
        ),
      );
    });
  }

  void _onDropDownChanged(String? value) {
    // Handle dropdown change
    if (value != null) {
      print('Selected district: $value');
    }
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
                      itemsList: _districts.map((option) {
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
                      itemBuilder: (context, index) => ListTile(
                            title: Text(
                                'Camera ${searchCameras[index].name}'), // Placeholder for camera name
                            subtitle: Text(
                                'District: ${searchCameras[index].dist}'), // Placeholder for district
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
