import 'package:codigo6_whatsapp/data/data_dummy.dart';
import 'package:codigo6_whatsapp/widgets/add_icon.dart';
import 'package:codigo6_whatsapp/widgets/footer.dart';
import 'package:codigo6_whatsapp/widgets/header_listtile.dart';
import 'package:codigo6_whatsapp/widgets/header_text.dart';
import 'package:codigo6_whatsapp/widgets/item_status_widget.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DataDummy data = DataDummy();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadeListTile(
          leading: CircleAvatar(
            radius: 24,
            backgroundImage: const NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu67MQSbSlgooFXzomjbf63r_PIehFEbZKrQ&usqp=CAU",
            ),
            child: Stack(
              children: const [
                AddIcon(),
              ],
            ),
          ),
          title: "My Status",
          subtitle: "Add an update",
        ),
        const HeaderText(title: "Recent Updates"),
        Expanded(
          child: ListView.builder(
            itemCount: data.statuses.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemStatusWidget(
                status: data.statuses[index],
              );
            },
          ),
        ),
        const Footer(text: "Your status update are "),
      ],
    );
  }
}
