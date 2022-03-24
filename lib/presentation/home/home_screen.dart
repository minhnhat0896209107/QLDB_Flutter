import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/model/directory.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/presentation/detail/detail_screen.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/presentation/home/component/display_listview.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/presentation/login/login_screen.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/widget/widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Directory> directory;
  String query = '';

  @override
  void initState() {
    super.initState();

    directory = direct;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quản lý danh bạ điện thoại"),
        actions: [
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.only(right: 10),
                child: Text(
                  'Logout',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
      body: _build(),
    );
  }

  Widget _build() {
    return Card(
      color: Colors.blue[50],
      elevation: 10.0,
      child: Column(
        children: [
          _buildSearch(),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: directory.length,
              itemBuilder: (context, index) {
                final dr = directory[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen(index: index)));
                  },
                  child: DisplayListView(
                    index: index,
                    direct: dr,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearch() => SearchWidget(
        text: query,
        hintText: 'Tìm kiếm theo tên hoặc email',
        onChanged: searchDirect,
      );

  void searchDirect(String query) {
    final directory = direct.where((element) {
      final nameLower = element.name?.toLowerCase();
      final email = element.email.toString().toLowerCase();
      final searchLower = query.toLowerCase();

      return nameLower!.contains(searchLower) || email.contains(searchLower);
    }).toList();
    setState(() {
      this.query = query;
      this.directory = directory;
    });
  }
}
