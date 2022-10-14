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
      fontSize: 35,
      shadows: <Shadow>[
        Shadow(
            offset: Offset(5.0, 5.0), blurRadius: 10.0, color: Colors.black38)
      ],
      fontWeight: FontWeight.w300,
      fontFamily: '');

  static const textButtonStyle = TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      fontFamily: '');

  static const SignWithStyle = TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: '');

  static const hometitlestyle = TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontFamily: '');

  static const Profilestyle = TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontFamily: '');

  static const ProfileButtonstyle = TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.w300,
      fontFamily: '');
}
