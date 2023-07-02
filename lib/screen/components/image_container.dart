import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final double borderRadius;
  final String imgUrl;
  final double width;
  final double height;

  const ImageContainer({
    required this.borderRadius,
    required this.imgUrl,
    required this.width,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.network(
        imgUrl,
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
