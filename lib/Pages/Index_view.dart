import 'package:flutter/material.dart';
import 'package:real_estate_app/products/buttons/indev_view_buttons.dart';
import 'package:real_estate_app/products/images.dart';
import 'package:real_estate_app/products/languages.dart';

class IndexView extends StatefulWidget {
  const IndexView({Key? key}) : super(key: key);

  @override
  State<IndexView> createState() => _IndexViewState();
}

class _IndexViewState extends State<IndexView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PngImage(name: ImageItems().indexPic),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(LanguageItems.indextitle,
                  style: TextStyles.IndexStyle,
                  textScaleFactor: 1,
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: true),
                  textAlign: TextAlign.center),
              IndexButton(),
            ],
          )
        ],
      ),
    );
  }
}
