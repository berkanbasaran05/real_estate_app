// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:real_estate_app/products/images.dart';
import 'package:real_estate_app/products/languages.dart';

import '../products/buttons/profile_view_buttons.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(radius: 5, colors: <Color>[
          Color(int.parse("0xffE0E0E0")),
          Color(int.parse("0xFF0ced44"))
        ])),
        child: SizedBox(
          width: 500,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(height: 50),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProfileImagePic(),
                      Text('Berkan BASARAN', style: TextStyles.Profilestyle),
                      Text('berkanbasaran05@gmail.com'),
                      TextButton(
                          onPressed: () {}, child: Text('Profili Düzenle'))
                    ],
                  )),
              Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        AccountButton(),
                        SavedPlaces(),
                        MyScore(),
                        SettingProfile()
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
