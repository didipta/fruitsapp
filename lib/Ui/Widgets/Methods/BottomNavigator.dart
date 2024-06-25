import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Style/Images.dart';

BottomNavigationBar bottomNavigationBar(BuildContext context, int _selectedIndex, Function(int) _onItemTapped) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.transparent,
    mouseCursor: SystemMouseCursors.click,
    elevation: 0,
    enableFeedback: false,
    currentIndex: _selectedIndex,
    onTap: _onItemTapped,
    selectedItemColor: Colors.black, // Ensure selected item text is black
    unselectedItemColor: Colors.white, // Ensure unselected item text is white
    selectedLabelStyle: TextStyle(color: Colors.black), // Black text for selected item
    unselectedLabelStyle: TextStyle(color: Colors.white), // White text for unselected items
    items: [
      _buildBottomNavigationBarItem(
        iconPath: AssetPaths.homeIcon,
        label: "Home",
        index: 0,
        selectedIndex: _selectedIndex,
        context: context,
      ),
      _buildBottomNavigationBarItem(
        iconPath: AssetPaths.Categories,
        label: "search",
        index: 1,
        selectedIndex: _selectedIndex,
        context: context,
      ),
      _buildBottomNavigationBarItem(
        iconPath: AssetPaths.wishlistIcon,
        label: "list",
        index: 2,
        selectedIndex: _selectedIndex,
        context: context,
      ),
      _buildBottomNavigationBarItem(
        iconPath: AssetPaths.cartIcon,
        label: "cart",
        index: 3,
        selectedIndex: _selectedIndex,
        context: context,
      ),
      _buildBottomNavigationBarItem(
        iconPath: AssetPaths.profileIcon,
        label: "Profile",
        index: 4,
        selectedIndex: _selectedIndex,
        context: context,
      ),
    ],
  );
}

BottomNavigationBarItem _buildBottomNavigationBarItem({
  required String iconPath,
  required String label,
  required int index,
  required int selectedIndex,
  required BuildContext context,
}) {
  bool isSelected = selectedIndex == index;
  return BottomNavigationBarItem(
    icon: Container(
      width: 50,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath,
            width: 24,
            height: 24,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              isSelected ? Colors.black : Colors.white,
              BlendMode.srcIn,
            ),
          ),
          SizedBox(height: 4), // Space between icon and text
          Text(
            label,
            style: _bottomNavigationBarLabelStyle(
              index: index,
              selectedIndex: selectedIndex,
            ),
          ),
        ],
      ),
    ),
    label:"" , // Provide label to ensure space allocation
  );
}

TextStyle _bottomNavigationBarLabelStyle({
  required int index,
  required int selectedIndex,
}) {
  return TextStyle(
    color: selectedIndex == index ? Colors.black : Colors.white,
    fontSize: 10,
  );
}
