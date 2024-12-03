import 'package:flutter/material.dart';

import '../data/chat_model.dart';

class Chatlist extends StatelessWidget {
  const Chatlist({super.key});

  @override
  Widget build(BuildContext context) {
    return (Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.separated(
            itemCount: chats.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(chats[index].image),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chats[index].name,
                          style: TextStyle(),
                        ),
                        Text(
                          chats[index].message,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    chats[index].time,
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 10,
              );
            },
          ),
        ),
      ),
    ));
  }
}