import 'package:flutter/material.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/widget/widget_input_information.dart';

class InputChange extends StatelessWidget {
  const InputChange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InputInforWidget(
            title: "",
            name: "d01",
          ),
          InputInforWidget(
            title: "",
            name: "Nguyễn Văn Minh Nhật",
          ),
          InputInforWidget(
            title: "",
            name: "Hiền lành, dễ gần. Đam mê lập trình mobile",
          ),
          InputInforWidget(
            title: "",
            name: "nhat@gmail.com",
          ),
          InputInforWidget(
            title: "",
            name: "Huế",
          ),
          InputInforWidget(
            title: "",
            name: "01547896547",
          ),
        ],
      ),
    );
  }
}
