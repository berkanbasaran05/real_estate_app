import 'package:flutter/material.dart';

class LanguageItems {
  static String indextitle = 'Evim Garanti';
  static String indexButtontitle = 'Başlayalım';
  static String loginTitle = 'Giriş yapınız';
}

class TextStyles {
  static const IndexStyle = TextStyle(
      color: Colors.black87,
      fontSize: 70,
      shadows: <Shadow>[
        Shadow(
            offset: Offset(5.0, 15.0), blurRadius: 10.0, color: Colors.black38)
      ],
      fontWeight: FontWeight.w200,
      fontFamily: 'Pacifico');

  static const IndexButtonStyle = TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w700,
      fontFamily: 'Pacifico');

  static const LoginTitleStyle = TextStyle(
    color: Colors.black87,
    fontSize: 20,
    shadows: <Shadow>[
      Shadow(offset: Offset(5.0, 15.0), blurRadius: 10.0, color: Colors.black38)
    ],
    fontWeight: FontWeight.w300,
  );
}
