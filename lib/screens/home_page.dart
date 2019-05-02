import 'package:flutter/material.dart';
import 'package:flutter_weather_app/screens/today_page.dart';
import 'package:flutter_weather_app/screens/tomorrow_page.dart';
import 'package:flutter_weather_app/screens/five_days_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final List<Widget> tabs = [
    TodayPage(),
    TomorrowPage(),
    FiveDaysPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.widget.title),
        elevation: 0.0,
      ),
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(""),
            title: Text('今日'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(""),
            title: Text('明日'),
          ),
          BottomNavigationBarItem(
              icon: Image.asset(""),
              title: Text('5日間'),
          )
        ],
      ),
    );
  }
}
