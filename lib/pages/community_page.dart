import 'package:codigo6_whatsapp/widgets/add_icon.dart';
import 'package:codigo6_whatsapp/widgets/header_listtile.dart';
import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeadeListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.black12,
        radius: 24,
        child: Stack(
          children: const [
            Center(
              child: Icon(
                Icons.groups,
                color: Colors.white,
              ),
            ),
            AddIcon(),
          ],
        ),
      ),
      title: "New Community",
    );
  }
}
