import 'package:flutter/material.dart';

class HeadeListTile extends StatelessWidget {
  final Widget leading;
  final String title;
  final String subtitle;

  const HeadeListTile({
    Key? key,
    required this.leading,
    required this.title,
    this.subtitle = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        leading: leading,
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: subtitle != ""
            ? Text(
                subtitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.black54,
                ),
              )
            : null,
      ),
    );
  }
}
