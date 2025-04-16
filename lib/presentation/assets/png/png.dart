import 'package:flutter/widgets.dart';

class AssetsPng {
  const AssetsPng();

  CustomAssetImage get placeHolder =>
      const CustomAssetImage('assets/png/place_holder.png');

  CustomAssetImage get logo => const CustomAssetImage('assets/png/logo.png');

  CustomAssetImage get avatar =>
      const CustomAssetImage('assets/png/avatar.png');
  CustomAssetImage get cameraIcon =>
      const CustomAssetImage('assets/png/camera_icon.png');

  // Auth
  CustomAssetImage get authBackground =>
      const CustomAssetImage('assets/png/auth_background.png');

  CustomAssetImage get google =>
      const CustomAssetImage('assets/png/google.png');

  CustomAssetImage get facebook =>
      const CustomAssetImage('assets/png/facebook.png');

  //Home
  CustomAssetImage get homeSec1 =>
      const CustomAssetImage('assets/png/home_sec_1.png');
  CustomAssetImage get cam1 => const CustomAssetImage('assets/png/ltt_cmt.png');
  CustomAssetImage get cam2 =>
      const CustomAssetImage('assets/png/hang_xanh.png');
  CustomAssetImage get cam3 => const CustomAssetImage('assets/png/cau_sg.png');
  CustomAssetImage get mapDemo =>
      const CustomAssetImage('assets/png/map_demo.png');
}

class CustomAssetImage {
  const CustomAssetImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
