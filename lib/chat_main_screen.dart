import 'package:flutter/material.dart';
import 'package:kakao_chat/components/chat_list.dart';

class ChatMainScreen extends StatelessWidget {
  ChatMainScreen({Key? key}) : super(key: key);

  final listImage = [];
  final chatName = [];
  final chatNum = [];
  final recentMessage = [];
  final lastChatTime = [];
  final newChatNum = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.all(10.0),
            child: ChatList(listImage[index], chatName[index], chatNum[index],
                recentMessage[index], lastChatTime[index], newChatNum[index]));
      },
    ));
  }
}
