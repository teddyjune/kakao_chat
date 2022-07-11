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
                  style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(width: 8),
                Text(
                  chatNum,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(width: 8),
                const Icon(Icons.notifications_off),
              ],
            ),
            Text(
              recentMessage,
              style: const TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(lastChatTime, style: const TextStyle(color: Colors.grey)),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.redAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Text(
                  newChatNum,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
