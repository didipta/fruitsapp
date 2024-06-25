import 'package:flutter/material.dart';

import '../../../Router/RouterPath.dart';
import '../../../Style/Images.dart';

class Productcart extends StatefulWidget {
  const Productcart({Key? key}) : super(key: key);

  @override
  State<Productcart> createState() => _ProductcartState();
}

class _ProductcartState extends State<Productcart> {
  List<Map> items = [
    {
      'id': '1',
      'image': AssetPaths.products1,
      'title': 'Luxury Sandals',
      'color': Colors.grey[200],
      'price': '1000',
      'subtitle':"Code #265gg37"
    },
    {
      'id': '2',
      'image': AssetPaths.products,
      'title': 'Summer Collection',
      'color': Colors.grey[200],
      'price': '2000',
      'subtitle':"Code #265gg37",
    },
    {
      'id': '3',
      'image': AssetPaths.products,
      'title': 'Winter Collection',
      'color': Colors.grey[200],
      'price': '3000',
      'subtitle':"Code #265gg37",
    },
    {
      'id': '4',
      'image': AssetPaths.products1,
      'title': 'Luxury Sandals',
      'color': Colors.grey[200],
      'price': '4000',
      'subtitle':"Code #265gg37",
    },
    {
      'id': '5',
      'image': AssetPaths.products,
      'title': 'Summer Collection',
      'color': Colors.grey[200],
      'price': '5000',
      'subtitle':"Code #265gg37",
    },
    {
      'id': '6',
      'image': AssetPaths.products1,
      'title': 'Winter Collection',
      'color': Colors.grey[200],
      'price': '6000',
      'subtitle':"Code #265gg37",
    }
    // Add more items here
  ];


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(
          width < 400 ? 10 : 10 + width * 0.01,
        ),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Container(
              margin: EdgeInsets.only(bottom: width < 400 ? 5 : 5 + width * 0.01),
              child: buildDismissible(index, item, width),
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(
          width < 400 ? 10 : 10 + width * 0.01,
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              Routerpath.checkout,

            );
            // Checkout logic
          },
          child: Text(
            "To Payment and Delivery",
            style: TextStyle(
              fontSize: width < 400 ? 16 : 16 + width * 0.01,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(
                vertical: width < 400 ? 15 : 15 + width * 0.01,
              ),
            ),
          ),
      ),
      ),
    );
  }

  Dismissible buildDismissible(int index, Map<dynamic, dynamic> item, double width) {
    return Dismissible(
              key: Key(item['id']),
              direction: DismissDirection.endToStart,
              background: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(Icons.delete, color: Colors.white),
                  ),
                ),
              ),
              onDismissed: (direction) {

                setState(() {
                  items.removeAt(index);
                });
              },
              child: Container(
                padding: EdgeInsets.all(width < 400 ? 8 : 8 + width * 0.01),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary.withOpacity(.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      item['image'],
                      width: width < 400 ? 61 : 61 + width * 0.02,
                      height: width < 400 ? 61 : 61 + width * 0.02,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      item['title'],
                      style: TextStyle(
                        fontSize: width < 400 ? 14 : 14 + width * 0.01,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      item['subtitle'],
                      style: TextStyle(
                        fontSize: width < 400 ? 12 : 12 + width * 0.01,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[600],
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              // Decrease quantity logic
                            },
                            icon: Icon(Icons.remove),
                            iconSize: width < 400 ? 16 : 16 + width * 0.01,
                          ),
                          Text(
                            "1 kg",
                            style: TextStyle(
                              fontSize: width < 400 ? 12 : 12 + width * 0.01,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Increase quantity logic
                            },
                            icon: Icon(Icons.add),
                            iconSize: width < 400 ? 16 : 16 + width * 0.01,
                          ),
                        ],
                      ),
                      Text(
                        "\$${item['price']}",
                        style: TextStyle(
                          fontSize: width < 400 ? 16 : 16 + width * 0.01,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
  }
}
