import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  final String tag;
  final String imageUrl;
  final double? height;
  final double? width;
  final BoxFit fit;
  final BorderRadius? borderRadius;

  const HeroImage({
    Key? key,
    required this.tag,
    required this.imageUrl,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image = Image.network(
      imageUrl,
      height: height,
      width: width,
      fit: fit,
    );

    // Jika ada borderRadius -> bungkus dengan ClipRRect
    if (borderRadius != null) {
      image = ClipRRect(
        child: image,
      );
    }

    return Hero(
      tag: tag,
      child: image,
    );
  }
}
