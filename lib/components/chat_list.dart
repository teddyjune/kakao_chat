import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  final String listImage;
  final String chatName;
  final String chatNum;
  final String recentMessage;
  final String lastChatTime;
  final String newChatNum;

  const ChatList(
      this.listImage, this.chatName, this.chatNum, this.recentMessage, this.lastChatTime, this.newChatNum,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(listImage,
              width: 60, height: 60, fit: BoxFit.cover),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  chatName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 8),
                Text(
                  chatNum,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(width: 8),
                Icon(Icons.notifications_off),
              ],
            ),
            Text(
              recentMessage,
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(lastChatTime, style: TextStyle(color: Colors.grey)),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.redAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Text(
                  newChatNum,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
