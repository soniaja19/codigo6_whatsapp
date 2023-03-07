import 'package:codigo6_whatsapp/models/status_model.dart';
import 'package:codigo6_whatsapp/pages/chat_detail_page.dart';
import 'package:flutter/material.dart';

class ItemStatusWidget extends StatelessWidget {
  final StatusModel status;

  const ItemStatusWidget({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatDetailPage(
              image: status.avatar,
              name: status.name,
            ),
          ),
        );
      },
      leading: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xff10CE5F),
            width: 2,
          ),
        ),
        child: CircleAvatar(
          backgroundColor: Colors.black12,
          radius: 24,
          backgroundImage: NetworkImage(status.avatar),
        ),
      ),
      title: Text(
        status.name,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        status.time,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: Colors.black54,
        ),
      ),
    );
  }
}
