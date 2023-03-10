import 'package:flutter/material.dart';

class InputItemWidget extends StatelessWidget {
  String? name, title;
  double? fontSize;
  InputItemWidget({Key? key, this.name, this.title, this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
      child: Row(
        children: [
          Text(
            "$title",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Text(
            "$name",
            style: TextStyle(color: Colors.black, fontSize: fontSize),
          )
        ],
      ),
    );
  }
}
