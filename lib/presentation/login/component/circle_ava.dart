import 'package:flutter/material.dart';

class CircleAva extends StatelessWidget {
  const CircleAva({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      alignment: Alignment.topCenter,
      child: CircleAvatar(
        maxRadius: 40,
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.person_outline,
          size: 80,
          color: Colors.white,
        ),
      ),
    );
  }
}
