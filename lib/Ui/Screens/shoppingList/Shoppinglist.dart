import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:foodecommerce/Router/RouterPath.dart';
import 'package:foodecommerce/Style/Images.dart';
import 'package:foodecommerce/Ui/Widgets/Methods/Appbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Shoppinglist extends StatefulWidget {
  const Shoppinglist({super.key});

  @override
  State<Shoppinglist> createState() => _ShoppinglistState();
}

class _ShoppinglistState extends State<Shoppinglist> {
  final List<List<String>> shoppingLists = [
    ['Bread', 'Carrot', 'Cheese', 'Milk', 'Butter'],
    [
      'Bread',
      'Carrot',
      'Cheese',
      'Milk',
      'Butter',
      'Bread',
      'Carrot',
      'Cheese',
      'Milk',
      'Butter'
    ],
    [
      'Bread',
      'Carrot',
      'Cheese',
      'Milk',
      'Butter',
      'Bread',
      'Carrot',
      'Cheese',
      'Milk',
      'Butter'
    ],
    ['Bread', 'Carrot', 'Cheese', 'Milk', 'Butter'],
    ['Bread', 'Carrot', 'Cheese', 'Milk', 'Butter'],
    ['Bread', 'Carrot', 'Cheese', 'Milk', 'Butter'],
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: appBar(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Shopping List',
                      style: TextStyle(
                        fontSize: width < 400 ? 16 : 16 + width * 0.01,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.px,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            size: width < 400 ? 20 : 20 + width * 0.01,
                            color: Theme.of(context)
                                .secondaryHeaderColor
                                .withOpacity(0.7),
                          ),
                          SizedBox(
                            width: 5.px,
                          ),
                          Text(
                            'Add New List',
                            style: TextStyle(
                                fontSize: width < 400 ? 14 : 14 + width * 0.01,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context)
                                    .secondaryHeaderColor
                                    .withOpacity(0.7)),
                          )
                        ],
                      ))
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: shoppingLists.length,
                  itemBuilder: (BuildContext context, int index) {
                    double ht = 180.px + shoppingLists[index].length * 15.px;
                    return Container(
                      height: ht,
                      child: ShoppingListCard(
                        listNumber: index + 1,
                        items: shoppingLists[index],
                        backgroundColor: _getBackgroundColor(index),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20.px)
            ],
          ),
        ));
  }

  Color _getBackgroundColor(int index) {
    switch (index % 5) {
      case 0:
        return Colors.pink.shade50;
      case 1:
        return Colors.green.shade50;
      case 2:
        return Colors.yellow.shade50;
      case 3:
        return Colors.blue.shade50;
      case 4:
        return Colors.grey.shade50;
      default:
        return Colors.white;
    }
  }
}

class ShoppingListCard extends StatelessWidget {
  final int listNumber;
  final List<String> items;
  final Color backgroundColor;

  ShoppingListCard({
    required this.listNumber,
    required this.items,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Card(
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'List #$listNumber',
                      style: TextStyle(
                        fontSize: width < 400 ? 16 : 16 + width * 0.01,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Add functionality for more options
                      },
                      child: Icon(
                        Icons.more_vert,
                        size: width < 400 ? 20 : 20 + width * 0.01,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8),
                Text('Product Tomorrow List',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: width < 400 ? 12 : 12 + width * 0.01,
                    )),

              ],
            ),
            SizedBox(height: 8),
            Flexible(
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: items
                    .map((item) => Text(
                  '• $item',
                  style: TextStyle(
                    fontSize: width < 400 ? 14 : 14 + width * 0.01,
                  ),
                ))
                    .toList(),
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: double.infinity,
              height: 40.px,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routerpath.listrecommendations);
                },
                child: Text(
                  'List-Based Selection',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width < 400 ? 12 : 12 + width * 0.01,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).secondaryHeaderColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    elevation: 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
