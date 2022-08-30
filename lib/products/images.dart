import 'package:flutter/material.dart';

class ImageItems {
  final String indexPic = "indexPic";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  String get _nameWithPath => 'assets/images/$name.png';
}
