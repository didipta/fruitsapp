import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Style/Images.dart';

class AutoScrollPage extends StatefulWidget {
  final double width;
  final List<Map> items;
  final Function Child;
  final double viewportFraction;
  final String label;


  const AutoScrollPage({super.key, required this.width, required this.items, required this.Child, required this.viewportFraction, required this.label});

  @override
  _AutoScrollPageState createState() => _AutoScrollPageState();
}

class _AutoScrollPageState extends State<AutoScrollPage> {

  late PageController _pageController;
  int _currentPage = 1;
  late Timer _timer;
  List<Map> get items => widget.items;
  Function get Child => widget.Child;
  String get label => widget.label;


  @override
  void initState() {
    super.initState();
    _initializePageController();

    // Set up the auto-scroll functionality
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      int nextPage = _currentPage + 3; // Scroll 3 items at a time

      _pageController.animateToPage(
        nextPage,
        duration: Duration(milliseconds: 1000),
        curve: Curves.easeInOut,
      );

      setState(() {
        _currentPage = nextPage;
      });
    });
  }

  void _initializePageController() {
    double viewportFraction = widget.viewportFraction;
    _pageController = PageController(
      viewportFraction: viewportFraction,
      initialPage: _currentPage,
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: width < 400 ? 14 : 14 + width * 0.01,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: SmoothPageIndicator(
            //     controller: _pageController,
            //     count: items.length, // Adjust to match the total number of items
            //     effect: WormEffect(
            //       dotWidth: 5.0,
            //       dotHeight: 5.0,
            //       spacing: 4.0,
            //       dotColor: Colors.black26,
            //       activeDotColor: Theme.of(context).primaryColor,
            //     ),
            //   ),
            // ),
          ],
        ),
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemBuilder: (context, index) {
              // Use modulo operator to create the infinite loop effect
              int itemIndex = index % items.length;
              return items.length!=0 ?Container(
                  margin: const EdgeInsets.symmetric(horizontal:4,vertical: 2),
                  child:Child(itemIndex, width,items,height,context)
              ) : Container();
            },
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
        ),

      ],
    );
  }


}
