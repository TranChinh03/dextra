class DetectByCameraQuery {
  final String? camera;

  DetectByCameraQuery({
    this.camera,
  });

  Map<String, dynamic> toJson() {
    return {
      if (camera != null) 'camera': camera,
    };
  }
}
