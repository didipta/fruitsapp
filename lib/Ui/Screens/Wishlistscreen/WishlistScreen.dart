import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Style/Images.dart';
import '../../Widgets/ItemCard.dart';
import '../../Widgets/ResponsiveGridList.dart';

class Wishlistscreen extends StatefulWidget {
  const Wishlistscreen({super.key});

  @override
  State<Wishlistscreen> createState() => _WishlistscreenState();
}

class _WishlistscreenState extends State<Wishlistscreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body:Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                'Wishlist',
                style: TextStyle(
                  fontSize: width < 400 ? 16 : 16 + width * 0.01,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ResponsiveGridListview(
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
                    gap: 12,)
            ),

          ],
        ),
      )
    );
  }
}
