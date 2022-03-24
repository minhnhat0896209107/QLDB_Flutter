import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  String? hintText;
  Icon? icon;
  IconButton? suffixIcon;
  TextInputType? textInputType;
  bool obsureText;

  InputWidget(
      {Key? key,
      this.textInputType,
      this.hintText,
      this.suffixIcon,
      this.icon,
      required this.obsureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 40, right: 40),
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          color: Colors.white,
          borderRadius: BorderRadius.circular(9)),
      child: TextFormField(
        obscureText: obsureText,
        keyboardType: textInputType,
        style: TextStyle(color: Colors.black, fontSize: 20),
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText,
          border: InputBorder.none,
          prefixIcon: Container(child: icon),
          fillColor: Colors.grey,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
