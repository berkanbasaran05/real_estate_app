import 'package:flutter/material.dart';
import 'package:real_estate_app/products/languages.dart';

import '../products/buttons/indev_view_buttons.dart';
import '../products/buttons/login_view_buttons.dart';
import '../products/textfields/Login_page_textfield.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(radius: 5, colors: <Color>[
          Color(int.parse("0xffE0E0E0")),
          Color(int.parse("0xFF0ced44"))
        ])),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 70),
              Expanded(
                  flex: 2,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          LanguageItems.loginTitle,
                          style: TextStyles.LoginTitleStyle,
                        ),
                        UserNameTextField(),
                        PasswordTextField(),
                        LoginForgetPasswordButton()
                      ])),
              Expanded(flex: 1, child: Column(children: [LoginSigninButton()])),
              Expanded(
                  flex: 1,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'İle giriş yapınız',
                          style: TextStyles.SignWithStyle,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [WithGmailLogin(), WithFacebookLogin()])
                      ])),
              Expanded(
                  flex: 1,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Bir hesabın yok mu ?'),
                        signUpTextButton()
                      ])),
            ],
          ),
        ),
      ),
    );
  }
}
