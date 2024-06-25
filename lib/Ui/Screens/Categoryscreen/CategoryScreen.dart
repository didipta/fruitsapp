import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodecommerce/Ui/Widgets/ItemCard.dart';
import 'package:foodecommerce/Ui/Widgets/ResponsiveGridList.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Router/RouterPath.dart';
import '../../../Style/Images.dart';
import '../../Widgets/Methods/Appbar.dart';
import '../HomeScreen/IndexParts/HomePartwight/Categorycard.dart';

class Categoryscreen extends StatefulWidget {
  const Categoryscreen({super.key});

  @override
  State<Categoryscreen> createState() => _CategoryscreenState();
}

class _CategoryscreenState extends State<Categoryscreen> {
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
      'color': Colors.yellow.shade200,
    },
    {
      'name': 'Fruits & Vegetables',
      'image': AssetPaths.products,
      'color': Colors.orange.shade200,
    },
    {
      'name': 'Fruits & Vegetables',
      'image': AssetPaths.products,
      'color': Colors.indigo.shade200,
    },
    {
      'name': 'Fruits & Vegetables',
      'image': AssetPaths.products,
      'color': Colors.red.shade200,
    }
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    List<Widget> categoryCards = items2.asMap().entries.map((entry) {
      int index = entry.key;
      return Container(
        height: 20.h,
        child: catgorycard(index, width, items2, height, context),
      );
    }).toList();

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8, left: 8, right: 8, bottom: 15
                    ),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                          fontSize: width < 400 ? 14 : 14 + width * 0.01,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: items2.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.all(10.0),
                          margin: const EdgeInsets.only(bottom: 8, left: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            items2[index]['name'],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: width < 400
                                    ? 12
                                    : 12 + width * 0.01,
                                fontWeight: FontWeight.w500),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Subcategories',
                    style: TextStyle(
                        fontSize: width < 400 ? 14 : 14 + width * 0.01,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Expanded(
                  child: ResponsiveGridListview(
                    items: categoryCards.length != 0 ? categoryCards : [],
                    minWidth: 200,
                    minItemsPerRow: 2,
                    listView: false,
                    gap:7,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
