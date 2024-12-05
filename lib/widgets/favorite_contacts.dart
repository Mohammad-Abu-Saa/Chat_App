import 'package:flutter/material.dart';

import '../data/chat_model.dart';

class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return (Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Favorite Contacts",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: chats.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(chats[index].image),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      chats[index].name,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 10,
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
