import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/add_screen.dart';
import 'package:instagram_clone/screens/home_screen.dart';
import 'package:instagram_clone/screens/reels_screen.dart';
import 'package:instagram_clone/screens/search_screen.dart';
import 'package:instagram_clone/screens/profile_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constants.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _currentIndex = 1;

  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const AddScreen(),
    const ReelsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _currentIndex == 0
                    ? Constants.HOME_BOLD
                    : Constants.HOME_OUTLINED,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _currentIndex == 1
                    ? Constants.SEARCH_BOLD
                    : Constants.SEARCH_OUTLINED,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _currentIndex == 2
                    ? Constants.ADD_BOLD
                    : Constants.ADD_OUTLINED,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _currentIndex == 3
                    ? Constants.REELS_BOLD
                    : Constants.REELS_OUTLINED,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Captain_America.png'),
                    fit: BoxFit.cover,
                  ),
                  //shape: BoxShape.circle,
                  border: _currentIndex == 4
                      ? Border.all(color: Colors.black, width: 4)
                      : Border.all(width: 0),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              label: '',
            ),
          ],
        ));
  }
}
