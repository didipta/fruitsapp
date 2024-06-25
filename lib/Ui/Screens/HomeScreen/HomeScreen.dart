import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodecommerce/Ui/Widgets/Methods/Appbar.dart';

import '../../Widgets/Methods/BottomNavigator.dart';
import 'HomepageIndex.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  List apptitle=[
    'Home',
    'Categories',
    'Offer',
    'Profile',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
        body: RefreshIndicator(
          onRefresh: () {
            return Future.delayed(
                Duration(seconds: 1),
                    () {
                  print("sfnkjsfbvk");
                    }
            );

          },
          child:  Container(child: homePageIndex(_selectedIndex,context)),
        ),
      bottomNavigationBar:  Container(
        clipBehavior: Clip.hardEdge,


        decoration: BoxDecoration(
          color: Theme.of(context).secondaryHeaderColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),

        ),
        child: bottomNavigationBar(context, _selectedIndex, _onItemTapped),
      ),
    );
  }
}
