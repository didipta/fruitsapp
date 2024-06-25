import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodecommerce/Ui/Screens/HomeScreen/IndexParts/HomePartwight/Categorycard.dart';
import 'package:foodecommerce/Ui/Screens/HomeScreen/IndexParts/HomePartwight/HeroBanner.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../Style/Images.dart';
import '../../../Widgets/ItemCard.dart';
import '../../../Widgets/ListItemCarousel.dart';
import '../../../Widgets/ResponsiveGridList.dart';

class Homepart extends StatelessWidget {
  const Homepart({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    List<Map> items = [
      {
        'image': AssetPaths.herosection,
        'title': 'Luxury Sandals',
        'color': Colors.red.shade200,
        'price': '1000',
        'subtitle':
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
      },
      {
        'image': AssetPaths.herosection,
        'title': 'Summer Collection',
        'color': Colors.blue.shade200,
        'price': '2000',
        'subtitle':
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
      },
      {
        'image': AssetPaths.herosection,
        'title': 'Winter Collection',
        'color': Colors.green.shade200,
        'price': '3000',
        'subtitle':
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
      },
      {
        'image': AssetPaths.herosection,
        'title': 'Luxury Sandals',
        'color': Colors.red.shade200,
        'price': '4000',
        'subtitle':
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
      },
      {
        'image': AssetPaths.herosection,
        'title': 'Summer Collection',
        'color': Colors.blue.shade200,
        'price': '5000',
        'subtitle':
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
      },
      {
        'image': AssetPaths.herosection,
        'title': 'Winter Collection',
        'color': Colors.green.shade200,
        'price': '6000',
        'subtitle':
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
      },
      // Add more images as needed
    ];
    List<Map> items2 = [
      {
        'name': 'Fish & Seafood',
        'image': AssetPaths.products,
        'color': Colors.red.shade200,
      },
      {
        'name': 'Meat & Poultry',
        'image': AssetPaths.products,
        'color': Colors.blue.shade200,
      },
      {
        'name': 'Fruits & Vegetables',
        'image': AssetPaths.products,
        'color': Colors.green.shade200,
      },
      {
        'name': 'Fish & Seafood',
        'image': AssetPaths.products,
        'color': Colors.red.shade200,
      },
      {
        'name': 'Meat & Poultry',
        'image': AssetPaths.products,
        'color': Colors.blue.shade200,
      },
      {
        'name': 'Fruits & Vegetables',
        'image': AssetPaths.products,
        'color': Colors.green.shade200,
      }
    ];
    return Container(
      // Body for Profile
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            height: 30.h, // Using responsive_sizer for height
            child: AutoScrollPage(
              label: "Best Choice",
              width: double.infinity,
              // Using responsive_sizer for width
              items: items,
              Child: listcard,
              viewportFraction: 0.9,
            ),
          ),
          SizedBox(height: 1.h),
          // Responsive SizedBox height
          Container(
            height: width < 400 ? 30.h : 25.h + width * 0.03,
            // Using responsive_sizer for height
            child: AutoScrollPage(
              label: "Best Choice",
              width: 3.w,
              // Using responsive_sizer for width
              items: items2,
              Child: catgorycard,
              viewportFraction: 0.4,
            ),
          ),
          Column(
            children: [
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "List-based recommendations",
                      style: TextStyle(
                        fontSize: width < 400 ? 14 : 14 + width * 0.01,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "View All",
                          style: TextStyle(
                              fontSize:
                                  width < 400 ? 12 : 12 + width * 0.01,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.primary),
                        )),
                  ],
                ),
              ),
              ResponsiveGridListview(
                items: [
                  ItemCard(
                    items: {
                      "image": AssetPaths.products1,
                      "name": "Black T-shirt",
                    },
                  ),
                  ItemCard(
                    items: {
                      "image": AssetPaths.products1,
                      "name": "Black T-shirt",
                    },
                  ),
                  ItemCard(
                    items: {
                      "image": AssetPaths.products1,
                      "name": "White T-shirt",
                    },
                  ),
                  ItemCard(
                    items: {
                      "image": AssetPaths.products1,
                      "name": "Blue T-shirt",
                    },
                  ),
                  ItemCard(
                    items: {
                      "image": AssetPaths.products1,
                      "name": "Red T-shirt",
                    },
                  ),
                  ItemCard(
                    items: {
                      "image": AssetPaths.products1,
                      "name": "Green T-shirt",
                    },
                  ),
                  ItemCard(
                    items: {
                      "image": AssetPaths.products1,
                      "name": "Yellow T-shirt",
                    },
                  ),
                  ItemCard(
                    items: {
                      "image": AssetPaths.products1,
                      "name": "Pink T-shirt",
                    },
                  ),
                  ItemCard(
                    items: {
                      "image": AssetPaths.products1,
                      "name": "Purple T-shirt",
                    },
                  ),
                  ItemCard(
                    items: {
                      "image": AssetPaths.products1,
                      "name": "Purple T-shirt",
                    },
                  ),
                ],
                minWidth: 200,
                minItemsPerRow: 2,
                listView: true,
                gap: 8,
              ),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
