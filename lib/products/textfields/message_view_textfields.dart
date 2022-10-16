import 'package:flutter/material.dart';

class MessageInputField extends StatelessWidget {
  const MessageInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        decoration:
            BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    children: [
                      const Icon(Icons.sentiment_satisfied_alt_outlined),
                      const SizedBox(width: 10),
                      Expanded(child: Message_view_textfield()),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send))
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class Message_view_textfield extends StatelessWidget {
  const Message_view_textfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
        decoration: InputDecoration(
            border: InputBorder.none, hintText: "Bir mesaj yazınız..."));
  }
}
