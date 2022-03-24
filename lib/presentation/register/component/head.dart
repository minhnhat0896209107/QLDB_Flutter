import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  const Head({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 40, top: 40),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              'Đăng ký',
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Icon(
              Icons.library_books,
              size: 100,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
