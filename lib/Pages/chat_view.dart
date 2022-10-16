import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:real_estate_app/Pages/message_view.dart';

import 'package:real_estate_app/products/images.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
          title: Text('Sohbetler'),
          gradient: RadialGradient(radius: 5, colors: <Color>[
            Color(int.parse("0xffE0E0E0")),
            Color(int.parse("0xFF0ced44"))
          ]),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.chevron_left))),
      body: ListView.builder(
          itemBuilder: ((context, index) => ChatCard(
              press: (() => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MessageView())))))),
      //floating side
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        child: Icon(Icons.person_add_alt),
      ),
    );
  }
}

//chat card

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.press,
  }) : super(key: key);
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                ChatProfileImagePic(),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Theme.of(context).scaffoldBackgroundColor)),
                    width: 14,
                    height: 14,
                  ),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text('Berkan Başaran'),
                    // ignore: prefer_const_constructors
                    Opacity(
                        opacity: 0.64,
                        // ignore: prefer_const_constructors
                        child: Text(
                          'Hello Guy, do you want to see my offer',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ))
                  ],
                ),
              ),
            ),
            Opacity(opacity: 0.64, child: Text('3m ago'))
          ],
        ),
      ),
    );
  }
}
