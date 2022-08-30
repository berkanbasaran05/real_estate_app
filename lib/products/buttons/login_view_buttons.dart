import 'package:flutter/material.dart';

class LoginForgetPasswordButton extends StatelessWidget {
  const LoginForgetPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 200),
      child:
          TextButton(onPressed: () {}, child: Text('Şifrenizi mi unuttunuz?')),
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
      width: 200,
      height: 45,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Giriş yap'),
        style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            shadowColor: Colors.black26,
            elevation: 30),
      ),
    );
  }
}
