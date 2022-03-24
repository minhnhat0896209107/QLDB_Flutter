import 'package:flutter/material.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/widget/widget.dart';

class InputAdd extends StatelessWidget {
  const InputAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InputWidget(
            obsureText: false,
            hintText: 'Id',
            icon: Icon(
              Icons.ac_unit,
              size: 40,
              color: Colors.blue,
            ),
            textInputType: TextInputType.text,
          ),
          InputWidget(
            obsureText: false,
            hintText: 'Họ và tên',
            icon: Icon(
              Icons.person,
              size: 40,
              color: Colors.blue,
            ),
            textInputType: TextInputType.text,
          ),
          InputWidget(
            obsureText: false,
            hintText: 'Email',
            icon: Icon(
              Icons.email,
              size: 40,
              color: Colors.blue,
            ),
            textInputType: TextInputType.text,
          ),
          InputWidget(
            obsureText: false,
            hintText: 'Thông tin cá nhân',
            icon: Icon(
              Icons.description,
              size: 40,
              color: Colors.blue,
            ),
            textInputType: TextInputType.text,
          ),
          InputWidget(
            obsureText: false,
            hintText: 'Sđt',
            icon: Icon(
              Icons.phone,
              size: 40,
              color: Colors.blue,
            ),
            textInputType: TextInputType.text,
          ),
          InputWidget(
            obsureText: false,
            hintText: 'Địa chỉ',
            icon: Icon(
              Icons.location_city,
              size: 40,
              color: Colors.blue,
            ),
            textInputType: TextInputType.text,
          ),
        ],
      ),
    );
  }
}
