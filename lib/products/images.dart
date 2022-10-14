import 'package:flutter/material.dart';

class ImageItems {
  final String indexPic = "indexPic";
  final String housePic = "housepic";
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

class NewsImageWidget extends StatelessWidget {
  const NewsImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30), // Image border
      child: SizedBox.fromSize(
        size: const Size.fromRadius(200), // Image radius
        child: PngImage(name: ImageItems().housePic),
      ),
    );
  }
}

class ProfileImagePic extends StatelessWidget {
  const ProfileImagePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 75,
      backgroundColor: Color(0xffFDCF09),
      child: CircleAvatar(
        radius: 75,
        backgroundImage: AssetImage("assets/images/biometri.png"),
      ),
    );
  }
}
