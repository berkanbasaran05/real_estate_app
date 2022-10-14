import 'package:flutter/material.dart';
import 'package:real_estate_app/Pages/home_view.dart';
import 'package:real_estate_app/Pages/login_view.dart';
import 'package:real_estate_app/products/languages.dart';

class IndexButton extends StatefulWidget {
  const IndexButton({Key? key}) : super(key: key);

  @override
  State<IndexButton> createState() => _IndexButtonState();
}

class _IndexButtonState extends State<IndexButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return LoginView();
            },
          ));
        },
        child: Text(
          LanguageItems.indexButtontitle,
          style: TextStyles.IndexButtonStyle,
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            shadowColor: Colors.black,
            elevation: 20),
      ),
    );
  }
}
