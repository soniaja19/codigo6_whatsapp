import 'package:codigo6_whatsapp/data/data_dummy.dart';
import 'package:codigo6_whatsapp/widgets/item_chat_widget.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DataDummy mandarina = DataDummy();

    return ListView.builder(
      itemCount: mandarina.chats.length,
      itemBuilder: (BuildContext context, int index) {
        return ItemChatWidget(
          dataChat: mandarina.chats[index],
        );
      },
    );
  }
}
