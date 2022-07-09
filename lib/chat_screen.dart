import 'package:flutter/material.dart';
import 'package:kakao_chat/chat_main_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: const [
            Text(
              '채팅',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 13),
            Text('오픈채팅', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.chat_bubble_outline)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.music_note_rounded)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
            ],
          )
        ],
      ),
      body: ChatMainScreen(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined, color: Colors.white),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble, color: Colors.white), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.remove_red_eye_sharp, color: Colors.white),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined, color: Colors.white),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz, color: Colors.white), label: ''),
        ],
      ),
    );
  }
}
