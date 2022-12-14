import 'package:flutter/material.dart';
import 'package:real_estate_app/products/images.dart';
import 'package:real_estate_app/products/languages.dart';

import '../products/textfields/message_view_textfields.dart';

class MessageView extends StatefulWidget {
  const MessageView({Key? key}) : super(key: key);

  @override
  State<MessageView> createState() => _MessageViewState();
}

class _MessageViewState extends State<MessageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: AppBarTitle(),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.call))],
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [Expanded(child: Text('')), MessageInputField()],
      ),
    );
  }
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: MessageProfileImagePic(),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      Column(children: [
        const Text(
          'Berkan Başaran',
          style: TextStyles.SignWithStyle,
        ),
        const Opacity(
            opacity: 0.64,
            child: Text(
              'Active 3m ago',
              style: TextStyles.SignWithStyle,
            ))
      ])
    ]);
  }
}
