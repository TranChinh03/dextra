import 'package:dextra/presentation/assets/assets.dart';
import 'package:flutter/material.dart';

class CommonImage extends StatelessWidget {
  final String? imagePath;
  final String? imageUrl;
  final double? width;
  final BoxFit? fit;

  const CommonImage({
    super.key,
    this.imagePath,
    this.imageUrl,
    this.width = double.infinity,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    if (imagePath != null) {
      return Image.asset(
        imagePath!,
        width: width,
        fit: fit,
        errorBuilder: _errorBuilder,
      );
    }
    return Image.network(
      imageUrl!,
      width: width,
      fit: fit,
      errorBuilder: _errorBuilder,
    );
  }

  Widget _errorBuilder(
      BuildContext context, Object error, StackTrace? stackTrace) {
    return Image.asset(
      Assets.png.placeHolder.path,
      width: width,
      fit: fit,
    );
  }
}
