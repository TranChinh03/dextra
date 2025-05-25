class SearchCamerasQuery {
  final String? cameraName;
  final String? district;

  SearchCamerasQuery({
    this.cameraName,
    this.district,
  });

  Map<String, dynamic> toJson() {
    return {
      if (cameraName != null) 'camera_name': cameraName,
      if (district != null) 'district': district,
    };
  }
}
