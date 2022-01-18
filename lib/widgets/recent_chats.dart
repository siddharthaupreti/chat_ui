import 'package:chat_ui/models/message_model.dart';
import 'package:flutter/material.dart';

class RecentChat extends StatelessWidget {
  const RecentChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
            return Text(chats[index].sender.name);
          },
        ),
      ),
    );
  }
}
