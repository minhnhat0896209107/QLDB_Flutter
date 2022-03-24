import 'package:flutter/material.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/presentation/add/add_screen.dart';
import 'package:nguyenvanminhnhat_qldb_flutter/presentation/home/home_screen.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: 2, child: NaviStateful()),
    );
  }
}

class NaviStateful extends StatefulWidget {
  const NaviStateful({Key? key}) : super(key: key);

  @override
  _NaviStatefulState createState() => _NaviStatefulState();
}

class _NaviStatefulState extends State<NaviStateful> {
  final PageController _pageController = PageController();
  int _currentTab = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  void _onTappedBar(int value) {
    setState(() {
      _currentTab = value;
    });

    _pageController.jumpToPage(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [HomeScreen(), AddScreen()],
        onPageChanged: (page) {
          setState(() {
            _currentTab = page;
          });
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[400],
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    _onTappedBar(0);
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: _currentTab == 0 ? Colors.orange : Colors.white,
                    ),
                    Text(
                      'HOME',
                      style: TextStyle(
                        color: _currentTab == 0 ? Colors.orange : Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    _onTappedBar(1);
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_circle,
                      color: _currentTab == 1 ? Colors.orange : Colors.white,
                    ),
                    Text(
                      'ADD',
                      style: TextStyle(
                        color: _currentTab == 1 ? Colors.orange : Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
