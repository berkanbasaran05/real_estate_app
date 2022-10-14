import 'package:flutter/material.dart';
import 'package:real_estate_app/products/languages.dart';

class ProfileButtons extends StatefulWidget {
  const ProfileButtons({Key? key}) : super(key: key);

  @override
  State<ProfileButtons> createState() => _ProfileButtonsState();
}

class _ProfileButtonsState extends State<ProfileButtons> {
  @override
  Widget build(BuildContext context) {
    return Text('');
  }
}

class AccountButton extends StatelessWidget {
  const AccountButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(
              height: 500,
              decoration: new BoxDecoration(),
              child: Text('data'),
            ),
          );
        },
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Hesabım', style: TextStyles.ProfileButtonstyle),
          Icon(
            Icons.chevron_right,
            color: Colors.black,
          )
        ]),
        style: ElevatedButton.styleFrom(
            primary: Colors.white60,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            shadowColor: Colors.black,
            elevation: 20),
      ),
    );
  }
}

class SavedPlaces extends StatelessWidget {
  const SavedPlaces({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(
              height: 500,
              decoration: new BoxDecoration(),
              child: Text('data'),
            ),
          );
        },
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Kaydedilen İlanlar', style: TextStyles.ProfileButtonstyle),
          Icon(
            Icons.chevron_right,
            color: Colors.black,
          )
        ]),
        style: ElevatedButton.styleFrom(
            primary: Colors.white60,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            shadowColor: Colors.black,
            elevation: 20),
      ),
    );
  }
}

class MyScore extends StatelessWidget {
  const MyScore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(
              height: 500,
              decoration: new BoxDecoration(),
              child: Text('data'),
            ),
          );
        },
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Kira Puanım', style: TextStyles.ProfileButtonstyle),
          Icon(
            Icons.chevron_right,
            color: Colors.black,
          )
        ]),
        style: ElevatedButton.styleFrom(
            primary: Colors.white60,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            shadowColor: Colors.black,
            elevation: 20),
      ),
    );
  }
}

class SettingProfile extends StatelessWidget {
  const SettingProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(
              height: 500,
              decoration: new BoxDecoration(),
              child: Text('data'),
            ),
          );
        },
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Hesap Ayarları', style: TextStyles.ProfileButtonstyle),
          Icon(
            Icons.chevron_right,
            color: Colors.black,
          )
        ]),
        style: ElevatedButton.styleFrom(
            primary: Colors.white60,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            shadowColor: Colors.black,
            elevation: 20),
      ),
    );
  }
}
