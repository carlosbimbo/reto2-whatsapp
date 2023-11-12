import 'package:flutter/material.dart';
import 'package:reto_wasap_io/models/status_model.dart';

class ItemStatusWidget extends StatelessWidget {
  // String avatarUrl;
  // String username;
  StatusModel chatModel;

  ItemStatusWidget(
      {
      // required this.avatarUrl,
      // required this.username,
      required this.chatModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 7.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.black12,
          radius: 26,
          backgroundImage: NetworkImage(chatModel.avatarUrl),
        ),
        title: Text(
          chatModel.username,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          chatModel.tiempo,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 13.0,
            color: Colors.black45,
          ),
        ),
      ),
    );
  }
}
