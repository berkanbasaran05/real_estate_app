// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/products/images.dart';
import 'package:real_estate_app/products/languages.dart';
import 'package:real_estate_app/products/textfields/home_view_textfileds.dart';

import '../products/buttons/home_view_buttons.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

int _currentIndex = 0;

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Container(
          width: 500,
          height: 900,
          decoration: BoxDecoration(
              gradient: RadialGradient(radius: 5, colors: <Color>[
            Color(int.parse("0xffE0E0E0")),
            Color(int.parse("0xFF0ced44"))
          ])),
          child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(height: 50),
                AppBarSideWidget(),
                SearchTextField(),
                SizedBox(height: 20),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      HomeViewFilterButton(),
                      HomeViewHouseButton(),
                      HomeViewRoomButton()
                    ]),
                Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemBuilder: ((context, index) {
                          return Column(
                            children: [
                              SizedBox(
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    // ignore: sort_child_properties_last
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          ClipRRect(
                                              child: SizedBox(
                                                  width: 400,
                                                  height: 200,
                                                  child: NewsImageWidget())),
                                          HomePageCardSubtittle()
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          );
                        }))),
              ]),
        ),

        //bottom side
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.greenAccent,
          buttonBackgroundColor: Colors.white,
          // ignore: prefer_const_literals_to_create_immutables
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.map, size: 30),
            Icon(Icons.message, size: 30),
            Icon(Icons.person, size: 30),
          ],
          onTap: ((index) {}),
        ));
  }
}

class HomePageCardSubtittle extends StatelessWidget {
  const HomePageCardSubtittle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Avcılar',
                  style: TextStyles.hometitlestyle,
                ),
                Text(
                  '7000₺',
                  style: TextStyles.hometitlestyle,
                )
              ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [Text('data'), Text('data')]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [Text('data'), Text('data')]),
        ],
      ),
    );
  }
}

class AppBarSideWidget extends StatelessWidget {
  const AppBarSideWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        Column(
          children: [
            Text('Anlık Konumunuz'),
            Row(
              children: [Icon(Icons.location_pin), Text('Amasya')],
            )
          ],
        ),
        IconButton(
            onPressed: () {}, icon: Icon(Icons.notifications_off_rounded))
      ],
    );
  }
}
