import 'package:carrot_market/screen/chatting/chatting_screen.dart';
import 'package:carrot_market/screen/home/home_screen.dart';
import 'package:carrot_market/screen/my_carrot/my_carrot_screen.dart';
import 'package:carrot_market/screen/near_me/near_me_screen.dart';
import 'package:carrot_market/screen/neighborhood_life/neighborhood_life_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectIndex,
        children: [
          HomeScreen(),
          NeighborhoodLifeScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectIndex,
        onTap: (index) {
          setState(() {
            _selectIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: '홈', icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(
              label: '동네생활', icon: Icon(CupertinoIcons.square_on_square)),
          BottomNavigationBarItem(
              label: '내 근처', icon: Icon(CupertinoIcons.placemark)),
          BottomNavigationBarItem(
              label: '채팅', icon: Icon(CupertinoIcons.chat_bubble_2)),
          BottomNavigationBarItem(
              label: '나의 당근', icon: Icon(CupertinoIcons.person)),
        ],
      ),
    );
  }
}
