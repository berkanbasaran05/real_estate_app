import 'package:flutter/material.dart';
import 'package:real_estate_app/Pages/Index_view.dart';
import 'package:real_estate_app/Pages/chat_view.dart';
import 'package:real_estate_app/Pages/home_view.dart';
import 'package:real_estate_app/Pages/login_view.dart';
import 'package:real_estate_app/Pages/message_view.dart';
import 'package:real_estate_app/Pages/profile_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(color: Colors.white),
          backgroundColor: Colors.green),
      debugShowCheckedModeBanner: false,
      home: const ChatView(),
    );
  }
}
