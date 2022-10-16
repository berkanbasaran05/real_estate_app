import 'package:flutter/material.dart';
import 'package:real_estate_app/products/images.dart';
import 'package:real_estate_app/products/languages.dart';

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
        leading: BackButton(color: Colors.white),
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MessageProfileImagePic(),
          ),
          Column(children: [
            Text(
              'Berkan Başaran',
              style: TextStyles.SignWithStyle,
            ),
            Opacity(
                opacity: 0.64,
                child: Text(
                  'Active 3m ago',
                  style: TextStyles.SignWithStyle,
                ))
          ])
        ]),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.call))],
        backgroundColor: Colors.green,
      ),
      body: Text('data'),
    );
  }
}
