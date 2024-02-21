import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final double iconWidth = 22;
  final int _currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        // setState(() {
        //   _currentPage = value;
        // });
      },
      currentIndex: _currentPage,
      selectedFontSize: 0,
      unselectedFontSize: 0,
      selectedItemColor: Theme.of(context).colorScheme.tertiary,
      unselectedItemColor: Theme.of(context).colorScheme.primary,
      items: [
        BottomNavigationBarItem(
          icon: _currentPage == 0
              ? SvgPicture.asset('assets/home-alt.svg', width: iconWidth)
              : SvgPicture.asset('assets/home.svg', width: iconWidth),
          label: 'home',
          tooltip: 'Home',
        ),
        BottomNavigationBarItem(
          icon: _currentPage == 1
              ? SvgPicture.asset('assets/explore-alt.svg', width: iconWidth)
              : SvgPicture.asset('assets/explore.svg', width: iconWidth),
          label: 'explore',
          tooltip: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: _currentPage == 2
              ? SvgPicture.asset('assets/heart-alt.svg', width: iconWidth)
              : SvgPicture.asset('assets/heart.svg', width: iconWidth),
          label: 'favourites',
          tooltip: 'Favourites',
        ),
        BottomNavigationBarItem(
          icon: _currentPage == 3
              ? SvgPicture.asset('assets/user-alt.svg', width: iconWidth)
              : SvgPicture.asset('assets/user.svg', width: iconWidth),
          label: 'profile',
          tooltip: 'Profile',
        ),
      ],
    );
  }
}
