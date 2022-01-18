import 'package:chat_ui/models/message_model.dart';
import 'package:flutter/material.dart';

import 'package:chat_ui/models/user_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(widget.user.name),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: ListView.builder(
                padding: EdgeInsets.only(top: 20.0),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return Text(messages[index].text);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
