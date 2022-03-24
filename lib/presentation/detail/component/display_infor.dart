import 'package:flutter/material.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/model/directory.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/widget/widget.dart';

class DisplayInfor extends StatelessWidget {
  int index;
  DisplayInfor({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InputInforWidget(
            title: "Id :",
            name: "${direct[index].id}",
          ),
          InputInforWidget(
            title: "Tên :",
            name: "${direct[index].name}",
          ),
          InputInforWidget(
            title: "Thông tin :",
            name: "${direct[index].description}",
          ),
          InputInforWidget(
            title: "email :",
            name: "${direct[index].email}",
          ),
          InputInforWidget(
            title: "Địa chỉ :",
            name: "${direct[index].address}",
          ),
          InputInforWidget(
            title: "Sđt :",
            name: "0${direct[index].number}",
          ),
        ],
      ),
    );
  }
}
