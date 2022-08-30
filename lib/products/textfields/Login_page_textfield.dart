import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        autocorrect: true,
        obscureText: true,
        obscuringCharacter: "*",
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            labelText: 'Şifre',
            prefixIcon: Icon(Icons.lock)),
        scrollPadding: EdgeInsets.all(8));
  }
}

class UserNameTextField extends StatelessWidget {
  const UserNameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        autocorrect: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            labelText: 'Kullanıcı Adı',
            prefixIcon: Icon(Icons.person)),
        scrollPadding: EdgeInsets.all(8));
  }
}
