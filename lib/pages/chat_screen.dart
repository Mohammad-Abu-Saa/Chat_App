import 'package:chat_app/widgets/chat_list.dart';
import 'package:chat_app/widgets/favorite_contacts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ChatScreen extends StatelessWidget {
  final Color mainColor = const Color(0xFF4151b4);
  final Color textColor = const Color(0xFF979797);

  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          "Chats",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              )),
        ],
      ),
      body: ChatScreenBody(),
    );
  }
}

class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        FavoriteContacts(),
        Chatlist(),
      ],
    ));
  }
}
