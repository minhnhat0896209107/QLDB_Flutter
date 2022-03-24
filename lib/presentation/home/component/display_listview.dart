import 'package:flutter/material.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/model/directory.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/widget/widget.dart';

class DisplayListView extends StatelessWidget {
  int index;
  Directory direct;
  DisplayListView({Key? key, required this.index, required this.direct})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.all(10),
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InputItemWidget(
                  title: "Tên:     ",
                  name: "${direct.name}",
                  fontSize: 20,
                ),
                InputItemWidget(
                  title: "Email:  ",
                  name: "${direct.email}",
                  fontSize: 18,
                ),
                InputItemWidget(
                  title: "Sđt:     ",
                  name: " 0${direct.number}",
                  fontSize: 18,
                ),
              ]),
        ));
  }
}
