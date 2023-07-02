import 'package:carrot_market/model/chat_message.dart';
import 'package:carrot_market/screen/chatting/components/chat_container.dart';
import 'package:carrot_market/screen/components/appbar_preferred_size.dart';
import 'package:flutter/material.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('채팅'),
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: List.generate(
          chatMessageList.length,
          (index) => ChatContainer(chatMessage: chatMessageList[index]),
        ),
      ),
    );
  }
}
