import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodecommerce/Ui/Widgets/Methods/Appbar.dart';

import '../../../Style/Images.dart';
import '../../Widgets/ItemCard.dart';
import '../../Widgets/ResponsiveGridList.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  TextEditingController _searchController = TextEditingController();
  List<String> _allProducts = List.generate(56, (index) => 'Soda $index');
  List<String> _filteredProducts = [];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      _filterProducts();
    });
  }

  void _filterProducts() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      _filteredProducts = _allProducts
          .where((product) => product.toLowerCase().contains(query))
          .toList();
      _filteredProducts = _filteredProducts.toSet().toList(); // Remove duplicates
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:appBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: _searchController,
                style: TextStyle(
                  fontSize: width < 400 ? 16 : 16 + width * 0.01,
                  color: Colors.black.withOpacity(.7),
                ),
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Container(
                    padding: const EdgeInsets.all(16),
                    child: SvgPicture.asset(AssetPaths.searchIcon,
                      width: 20,
                      height: 20,
                      fit: BoxFit.contain,
                    ),
                  ),

                  suffixIcon: IconButton(
                    icon: SvgPicture.asset(AssetPaths.scan,
                      width: 20,
                      height: 20,
                      fit: BoxFit.contain,
                    ),
                    onPressed: () {
                      _searchController.clear();
                    },
                  ),
                  fillColor: Colors.grey[200], // Background color of the TextField
                  filled: true, // Apply the fill color
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none, // Remove the border
                  ),
                ),
              ),
              SizedBox(height: 5),
              if (_searchController.text.isNotEmpty)
                if(!_filteredProducts.isEmpty)
              Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListView.builder(
                    itemCount: _filteredProducts.length > 5 ? 5 : _filteredProducts.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        minVerticalPadding: 10,
                        minTileHeight: 0,
                        title: Container(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, 0.1),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(_filteredProducts[index], style: TextStyle(
                                fontSize: width < 400 ? 16 : 16 + width * 0.01,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(.7),
                              )),
                              Spacer(),
                              Text(
                                '55 results',
                                style: TextStyle(
                                  fontSize: width < 400 ? 12 : 12 + width * 0.01,
                                  color: Theme.of(context).secondaryHeaderColor.withOpacity(.5)
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

              Container(
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
                    listView: true,
                    gap: 8,)
              ),

            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}