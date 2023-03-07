import 'package:codigo6_whatsapp/models/chat_model.dart';
import 'package:codigo6_whatsapp/pages/chat_detail_page.dart';
import 'package:flutter/material.dart';

class ItemChatWidget extends StatelessWidget {
  final ChatModel dataChat;

  const ItemChatWidget({
    Key? key,
    required this.dataChat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatDetailPage(
              image: dataChat.avatar,
              name: dataChat.name,
            ),
          ),
        );
      },
      leading: CircleAvatar(
        backgroundColor: Colors.black12,
        radius: 24,
        backgroundImage: NetworkImage(dataChat.avatar),
      ),
      title: Text(
        dataChat.name,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        dataChat.isTyping ? "typing..." : dataChat.message,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: dataChat.isTyping ? const Color(0xff10CE5F) : Colors.black54,
        ),
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            dataChat.time,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13.0,
              color: Colors.black54,
            ),
          ),
          dataChat.countMessage > 0
              ? Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: const BoxDecoration(
                    color: Color(0xff10CE5F),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    dataChat.countMessage.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
