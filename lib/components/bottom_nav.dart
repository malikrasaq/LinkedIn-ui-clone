import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _page = 0;
  late PageController pageController; 
  static const primaryColor = Colors.black;
  static const secondaryColor = Colors.grey;

  List<Widget> homeScreenItems = [
    Center(child: const Text('Home')),
    Center(child: const Text('My Network')),
    Center(child: const Text('Post')),
    Center(child: const Text('Notifications')),
    Center(child: const Text('Jobs')),
    
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    //Animating Page
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: homeScreenItems,
      ),
      bottomNavigationBar: CupertinoTabBar(
        height: 50,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              size: 20,
              FontAwesomeIcons.house,
              color: (_page == 0) ? primaryColor : secondaryColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
              size: 20,
                FontAwesomeIcons.userGroup,
                color: (_page == 1) ? primaryColor : secondaryColor,
              ),
              label: 'My Network',),
          BottomNavigationBarItem(
              icon: Icon(
              size: 20,
                FontAwesomeIcons.circlePlus,
                color: (_page == 2) ? primaryColor : secondaryColor,
              ),
              label: 'Post',),
          BottomNavigationBarItem(
            icon: Icon(
              size: 20,
              FontAwesomeIcons.solidBell,
              color: (_page == 3) ? primaryColor : secondaryColor,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              size: 20,
              FontAwesomeIcons.briefcase,
              color: (_page == 4) ? primaryColor : secondaryColor,
            ),
            label: 'Jobs',
          ),
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
  }
}
