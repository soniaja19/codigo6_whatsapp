import 'package:codigo6_whatsapp/models/call_model.dart';
import 'package:codigo6_whatsapp/pages/chat_detail_page.dart';
import 'package:flutter/material.dart';

class ItemCallWidget extends StatelessWidget {
  final CallModel call;

  const ItemCallWidget({
    Key? key,
    required this.call,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatDetailPage(
              image: call.avatar,
              name: call.name,
            ),
          ),
        );
      },
      leading: CircleAvatar(
        backgroundColor: Colors.black12,
        radius: 24,
        backgroundImage: NetworkImage(call.avatar),
      ),
      title: Text(
        call.name,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Row(
        children: [
          call.isIncomingCall
              ? const Icon(
                  Icons.south_west,
                  color: Colors.red,
                  size: 16,
                )
              : const Icon(
                  Icons.north_east,
                  color: Color(0xff10CE5F),
                  size: 16,
                ),
          const SizedBox(width: 5),
          Text(
            call.time,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black54,
            ),
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          call.isCall
              ? const Icon(
                  Icons.phone,
                  color: Color(0xff10CE5F),
                )
              : const Icon(
                  Icons.videocam,
                  color: Color(0xff10CE5F),
                ),
        ],
      ),
    );
  }
}
