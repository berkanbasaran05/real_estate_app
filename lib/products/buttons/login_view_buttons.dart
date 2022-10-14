import 'package:flutter/material.dart';
import 'package:real_estate_app/Pages/home_view.dart';

import '../languages.dart';

class LoginForgetPasswordButton extends StatelessWidget {
  const LoginForgetPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 200),
      child: TextButton(
          onPressed: () {},
          child: Text(
            'Şifrenizi mi unuttunuz?',
            style: TextStyles.textButtonStyle,
          )),
    );
  }
}

class LoginSigninButton extends StatelessWidget {
  const LoginSigninButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return HomeView();
            },
          ));
        },
        child: Text('Giriş yap'),
        style: ElevatedButton.styleFrom(
            primary: Colors.black87,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            shadowColor: Colors.black,
            elevation: 30),
      ),
    );
  }
}

class WithGmailLogin extends StatelessWidget {
  const WithGmailLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 45,
      child: ElevatedButton(
        onPressed: () {},
        child: Icon(Icons.mail),
        style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            shadowColor: Colors.black,
            elevation: 30),
      ),
    );
  }
}

class WithFacebookLogin extends StatelessWidget {
  const WithFacebookLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 45,
      child: ElevatedButton(
        onPressed: () {},
        child: Icon(Icons.facebook),
        style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            shadowColor: Colors.black,
            elevation: 30),
      ),
    );
  }
}

class signUpTextButton extends StatelessWidget {
  const signUpTextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          'Hesap Oluştur',
          style: TextStyles.textButtonStyle,
        ));
  }
}
