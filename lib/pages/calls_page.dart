import 'dart:math' as math;

import 'package:codigo6_whatsapp/data/data_dummy.dart';
import 'package:codigo6_whatsapp/widgets/footer.dart';
import 'package:codigo6_whatsapp/widgets/header_listtile.dart';
import 'package:codigo6_whatsapp/widgets/header_text.dart';
import 'package:codigo6_whatsapp/widgets/item_call_widget.dart';
import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DataDummy data = DataDummy();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadeListTile(
          leading: CircleAvatar(
            backgroundColor: const Color(0xff10CE5F),
            radius: 24,
            child: Transform.rotate(
              angle: 65 * math.pi / 90,
              child: const Icon(
                Icons.link,
                color: Colors.white,
              ),
            ),
          ),
          title: "Create a call link",
          subtitle: "Share a link for your WhatsApp call",
        ),
        const HeaderText(title: "Recent"),
        Expanded(
          child: ListView.builder(
            itemCount: data.calls.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemCallWidget(
                call: data.calls[index],
              );
            },
          ),
        ),
        const Footer(text: "Your personal calls are "),
      ],
    );
  }
}
