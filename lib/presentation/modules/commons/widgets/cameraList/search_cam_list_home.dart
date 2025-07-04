import 'dart:async';

import 'package:dextra/di/injectable.dart';
import 'package:dextra/domain/enum/screen_path.dart';
import 'package:dextra/domain/usecases/camera/queries/search_cameras/search_camras_query.dart';
import 'package:dextra/presentation/commons/api_state.dart';
import 'package:dextra/presentation/modules/commons/bloc/search/search_bloc.dart';
import 'package:dextra/presentation/modules/commons/widgets/button/common_primary_button.dart';
import 'package:dextra/presentation/modules/commons/widgets/card/camera_img_item.dart';
import 'package:dextra/presentation/modules/commons/widgets/dialog/image_dialog.dart';
import 'package:dextra/presentation/modules/commons/widgets/input/search_box.dart';
import 'package:dextra/presentation/router/router_config/router.dart';
import 'package:dextra/service/firebase_db_service.dart';
import 'package:dextra/theme/spacing/app_spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCamListHome extends StatefulWidget {
  final VoidCallback? scrollToTop;
  const SearchCamListHome({
    super.key,
    this.scrollToTop,
  });

  @override
  State<SearchCamListHome> createState() => _SearchCamListHomeState();
}

class _SearchCamListHomeState extends State<SearchCamListHome> {
  StreamSubscription<DatabaseEvent>? _userSubscription;
  List? _savedCams;

  int currentPage = 1;
  String searchText = "";
  String currentDistrict = "All";

  final _searchBloc = getIt.get<SearchBloc>();
  Timer? _debounce;

  void _onGetSavedCam() {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      _userSubscription = FirebaseDbService()
          .getReference(path: 'users/${user.uid}')
          .onValue
          .listen((event) {
        final dataSnapshot = event.snapshot;
        final profileData = dataSnapshot.value as Map;
        if (mounted) {
          setState(() {
            _savedCams = profileData['savedCameras'] ?? [];
          });
        }
      });
    }
  }

  void _onSearchTextChanged(String value) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
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

  @override
  void initState() {
    _onGetSavedCam();

    super.initState();
    // _searchBloc.add(
    //   SearchCamerasEvent(
    //     query: SearchCamerasQuery(
    //       cameraName: "",
    //       district: "",
    //     ),
    //   ),
    // );
  }

  @override
  void dispose() {
    _userSubscription?.cancel();
    super.dispose();
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SearchBox(
                    onChanged: _onSearchTextChanged,
                  ),
                ],
              ),
              if (state.apiStatus == ApiStatus.loading ||
                  _savedCams == null) ...[
                Center(
                  child: CircularProgressIndicator(),
                )
              ] else ...[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: AppSpacing.rem600),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: searchCameras
                        .take(3)
                        .map((camera) => CameraImgItem(
                              name: camera.name,
                              cameraId: camera.privateId,
                              time: camera.lastModified != null
                                  ? DateFormat('dd MMMM yyyy',
                                          context.locale.toLanguageTag())
                                      .format(camera.lastModified!)
                                  : '',
                              isSaved: _savedCams!.contains(camera.privateId),
                              onPressed: () => showDialog(
                                  context: context,
                                  builder: (context) => ImageDialog(
                                        selectedCam: camera,
                                      )),
                            ))
                        .toList(),
                  ),
                ),
              ],
              CommonPrimaryButton(
                text: tr('Common.all_cams'),
                onPressed: () => DextraRouter.go(ScreenPath.mapCam.value),
              ),
            ],
          );
        },
      ),
    );
  }
}
