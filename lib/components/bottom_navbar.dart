import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  final ValueChanged<int> onItemSelected;
  final int selectedIndex;

  BottomNavBar({required this.onItemSelected, required this.selectedIndex});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // List of SVG icon paths for normal and selected states
  final List<String> _normalIcons = [
    'assets/images/Home Icon.svg',
    'assets/images/Leaderboard Icon.svg',
    'assets/images/Scan Button.svg',
    'assets/images/Reward Page Icon.svg',
    'assets/images/Account Page Icon.svg',
  ];

  final List<String> _selectedIcons = [
    'assets/images/Home Icon (Clicked).svg',
    'assets/images/Leaderboard Icon (Clicked).svg',
    'assets/images/Scan Button.svg',
    'assets/images/Reward Page Icon (Clicked).svg',
    'assets/images/Account Page Icon (Clicked).svg',
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.selectedIndex,
      onTap: widget.onItemSelected,
      items: _buildBottomNavBarItems(),
    );
  }

  List<BottomNavigationBarItem> _buildBottomNavBarItems() {
    List<BottomNavigationBarItem> items = [];

    for (int i = 0; i < _normalIcons.length; i++) {
      items.add(
        BottomNavigationBarItem(
          icon: _buildIcon(_normalIcons[i], _selectedIcons[i]),
          label: 'Page ${i + 1}',
        ),
      );
    }

    return items;
  }

  Widget _buildIcon(String normalIconPath, String selectedIconPath) {
    return InkWell(
      onTap: () {
        widget.onItemSelected(_normalIcons.indexOf(normalIconPath));
      },
      child: Container(
        width: 32,
        height: 32,
        child: SvgPicture.asset(
          widget.selectedIndex == _normalIcons.indexOf(normalIconPath)
              ? selectedIconPath
              : normalIconPath,
              
         // You can customize the icon color here
        ),
      ),
    );
  }
}
