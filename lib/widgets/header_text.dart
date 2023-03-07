import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String title;
  const HeaderText({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
