import 'package:flutter/material.dart';
import 'package:kakao_chat/chat_screen.dart';

class ChatMainScreen extends StatelessWidget {
  const ChatMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ChatScreen(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble)),
        ],
      ),
    );
  }
}
