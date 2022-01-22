import 'package:flutter/material.dart';
import 'package:flutter_application_1/wigets/page_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final tabs = [
    const Center(child: HomeScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Container(
        child: SafeArea(
            child: Scaffold(
          body: tabs[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 20,
            currentIndex: _currentIndex,
            backgroundColor: Colors.blueAccent,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit),
                title: Text('Home', style: TextStyle(color: Colors.black)),
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.ac_unit),
                  title:
                      Text('Category', style: TextStyle(color: Colors.black)),
                  backgroundColor: Colors.yellow),
              BottomNavigationBarItem(
                  icon: Icon(Icons.ac_unit),
                  title: Text('News', style: TextStyle(color: Colors.black)),
                  backgroundColor: Colors.greenAccent),
              BottomNavigationBarItem(
                  icon: Icon(Icons.ac_unit),
                  title: Text('Library', style: TextStyle(color: Colors.black)),
                  backgroundColor: Colors.green),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        )),
      ),
    );
  }
}
