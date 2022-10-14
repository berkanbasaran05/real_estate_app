import 'package:flutter/material.dart';

class HomeViewRoomButton extends StatelessWidget {
  const HomeViewRoomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        children: [
          Text('(20) '),
          Text('Room'),
        ],
      ),
      style: ElevatedButton.styleFrom(
          primary: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          shadowColor: Colors.black,
          elevation: 20),
    );
  }
}

class HomeViewHouseButton extends StatelessWidget {
  const HomeViewHouseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        children: [
          Text('(59) '),
          Text('House'),
        ],
      ),
      style: ElevatedButton.styleFrom(
          primary: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          shadowColor: Colors.black,
          elevation: 20),
    );
  }
}

class HomeViewFilterButton extends StatelessWidget {
  const HomeViewFilterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Icon(Icons.settings_input_component),
      style: ElevatedButton.styleFrom(
          primary: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          shadowColor: Colors.black,
          elevation: 20),
    );
  }
}
