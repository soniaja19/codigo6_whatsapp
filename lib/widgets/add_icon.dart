import 'package:flutter/material.dart';

class AddIcon extends StatelessWidget {
  const AddIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        child: const CircleAvatar(
          radius: 10,
          backgroundColor: Color(0xff10CE5F),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 18,
          ),
        ),
      ),
    );
  }
}
