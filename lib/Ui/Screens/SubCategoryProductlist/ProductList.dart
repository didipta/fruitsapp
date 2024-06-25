import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Style/Images.dart';
import '../../Widgets/ItemCard.dart';
import '../../Widgets/Methods/Appbar.dart';
import '../../Widgets/ResponsiveGridList.dart';

class Productlist extends StatefulWidget {
  final String category;
  const Productlist({Key? key, required this.category}) : super(key: key);

  @override
  State<Productlist> createState() => _ProductlistState();
}

class _ProductlistState extends State<Productlist> {
  ScrollController _scrollController = ScrollController();
  late String activeCategory;
  late PageController _pageController;

  final List<String> listbottom = [
    "Apple",
    "Banana",
    "Orange",
    "Grapes",
    "Mango",
    "Pineapple",
    "Strawberry",
    "Watermelon",
    "Kiwi",

  ];

  @override
  void initState() {
    super.initState();
    activeCategory = widget.category;
    _pageController = PageController(initialPage: listbottom.indexOf(widget.category));

    _scrollController.addListener(() {
      // Add listener to scroll controller
      setState(() {


      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(
        context
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Column(
           mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Categories / Vegetables Fruits Berries",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: width < 400 ? 14 : 14 + width * 0.005,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Container(

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                        flex: 2,
                        child:Container(
                         margin: EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: width < 400 ? 12 : 12 + width * 0.005,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w400,
                              ),
                              prefixIcon: Icon(Icons.search,size: 20,),
                              prefixIconConstraints: BoxConstraints(
                                minWidth: 30, // Adjust the size of the icon container
                                minHeight: 20, // Adjust the size of the icon container
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 12), // Adjust vertical padding to center content
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                        )

                    ),
                    Expanded(
                        flex: 2,
                        child:Container(
                          padding: EdgeInsets.symmetric(horizontal: 10,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.sort,
                                    size: 24,
                                    color: Colors.grey.shade500,

                                  ),
                                  SizedBox(width: 5),
                                  Text("Sort by", style: TextStyle(
                                      color: Colors.black,
                                      fontSize: width < 400 ? 16 : 16 + width * 0.01,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w400
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.filter_list,
                                    size: 24,
                                    color: Colors.grey.shade500,

                                  ),
                                  SizedBox(width: 5),
                                  Text("Filter", style: TextStyle(
                                      color: Colors.black,
                                      fontSize: width < 400 ? 16 : 16 + width * 0.01,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w400
                                  )),
                                ],
                              ),

                            ],
                          ),
                        )

                    ),

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Text(
                  "Subcategories",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: width < 400 ? 12 : 12 + width * 0.01,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
              Container(
                height:6.h,
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: SingleChildScrollView(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: listbottom.map((item) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(

                            onPressed: () {
                              setState(() {
                                activeCategory = item;
                                _pageController.jumpToPage(listbottom.indexOf(item));
                                _scrollToSelectedCategory(item);
                              });
                            },

                            style: ButtonStyle(

                              backgroundColor: MaterialStateProperty.all(item == activeCategory ? Theme.of(context).secondaryHeaderColor : Colors.white),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),

                              ),

                              ),
                            ),
                            child: Text(item, style: TextStyle(
                                color: item == activeCategory ? Colors.white : Colors.black,
                                fontSize: width < 400 ? 12 : 12 + width * 0.005,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w400
                            )),
                          ),
                          SizedBox(width: 10), // Add space between buttons
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),

            ],
          ),

          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  activeCategory = listbottom[index];
                  _scrollToSelectedCategory(activeCategory);
                });
              },
              itemCount: listbottom.length,
              itemBuilder: (context, index) {
                return ResponsiveGridListview(
                  items: [
                    ItemCard(
                      items: {
                        "image":AssetPaths.products1,
                        "name": "Black T-shirt",
                      },
                    ),
                    ItemCard(
                      items: {
                        "image":AssetPaths.products1,
                        "name": "Black T-shirt",
                      },
                    ),
                    ItemCard(
                      items: {
                        "image":AssetPaths.products1,
                        "name": "White T-shirt",
                      },
                    ),
                    ItemCard(
                      items: {
                        "image":AssetPaths.products1,
                        "name": "Blue T-shirt",
                      },
                    ),
                    ItemCard(
                      items: {
                        "image":AssetPaths.products1,
                        "name": "Red T-shirt",
                      },
                    ),
                    ItemCard(
                      items: {
                        "image":AssetPaths.products1,
                        "name": "Green T-shirt",
                      },
                    ),
                    ItemCard(
                      items: {
                        "image":AssetPaths.products1,
                        "name": "Yellow T-shirt",
                      },
                    ),
                    ItemCard(
                      items: {
                        "image":AssetPaths.products1,
                        "name": "Pink T-shirt",
                      },
                    ),
                    ItemCard(
                      items: {
                        "image":AssetPaths.products1,
                        "name": "Purple T-shirt",
                      },
                    ),
                    ItemCard(
                      items: {
                        "image":AssetPaths.products1,
                        "name": "Purple T-shirt",
                      },
                    ),
                  ],
                  minWidth: 200,
                  minItemsPerRow: 2,
                  listView: false,
                  gap: 12,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _scrollToSelectedCategory(String category) {
    // Calculate the scroll position based on the index of the selected category
    double categoryPosition = listbottom.indexOf(category) * 75.0; // Assuming each button has a width of 72.0

    // Scroll to the calculated position
    _scrollController.animateTo(
      categoryPosition,
      duration: Duration(milliseconds: 500),
      curve: Curves.linear,
    );
  }



}
