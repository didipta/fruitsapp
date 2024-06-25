import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foodecommerce/Ui/Screens/ProductDetailsscreen/ProductDescription.dart';
import 'package:foodecommerce/Ui/Widgets/BannerCarouselImagesOnly.dart';
import 'package:foodecommerce/Ui/Widgets/Methods/Appbar.dart';

import '../../../Style/Images.dart';
import '../../Widgets/ItemCard.dart';
import '../../Widgets/ResponsiveGridList.dart';
import 'BottomNavbar.dart';

class Productdetails extends StatefulWidget {
  final String productname;
  const Productdetails({super.key, required this.productname});

  @override
  State<Productdetails> createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  bool readmore = false;

  void setStateIfMounted() {
    if (mounted) setState(() {
      readmore = !readmore;

    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             BannerCarouselImagesOnly(),
              _aboutsection(width, context),
              Productdescription(onTap:setStateIfMounted,readmore: readmore,),
              Container(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      margin: EdgeInsets.only(top: 10,left:10),
                      decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      )
                      ),
                      child: Text("Related Products",style: TextStyle(
                        fontSize: width < 400 ? 16 : 16 + width * 0.01,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.2,
                      ),
                      ),
                    ),
                    ResponsiveGridListview(
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
                          gap: 12,
                        ),
                  ],
                )

                ),


        
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavbar(width: width)
    );
  }

  Container _aboutsection(double width, BuildContext context) {
    return Container(
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
               Container(
                  width: width * 0.35,
                 height: 40,
                  child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        elevation: 0,
                      ),
                      child: Text("About Product",style: TextStyle(color: Colors.black,
                          fontSize: width < 400 ? 12 : 12+ width*0.01
                      ),)
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  width: width * 0.45,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Reviews",
                        style: TextStyle(
                          fontSize: width < 400 ? 12 : 12+ width*0.01,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        itemSize: width < 400 ? 12 : 12+ width*0.01,  // Set the size of the rating items
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),

                      Text(
                        "(4.3)",
                        style: TextStyle(
                          fontSize: width < 400 ? 12 : 12+ width*0.01,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                    ],
                  ),
                ),
               SizedBox(width: 5,),
               Container(
                  width: width * 0.1,
                 height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.favorite_border),
                  ),
                ),

              ],
            ),
          );
  }
}


