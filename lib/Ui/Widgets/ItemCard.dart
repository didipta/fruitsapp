import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Router/RouterPath.dart';
import '../../Style/Images.dart';

class ItemCard extends StatefulWidget {
  final Map<String, dynamic> items;

  const ItemCard({Key? key, required this.items}) : super(key: key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          Routerpath.productDetail,
          arguments: widget.items["name"],
        );
      },
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 214,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset(
                    widget.items["image"],
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: Container(
                      width: 30,
                      height: 30,
                      child: IconButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.all(4)),
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(CircleBorder()),
                        ),
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AssetPaths.wishlistIcon,
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 5,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 2.px, vertical: 1),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: quantity == 0
                          ? IconButton(
                        onPressed: () {
                          setState(() {
                            quantity++;
                          });
                        },
                        icon: Icon(
                          Icons.add,
                          color: Theme.of(context).secondaryHeaderColor,
                          size: 20.sp,
                        ),
                      )
                          : Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (quantity > 0) quantity--;
                              });
                            },
                            icon: Icon(
                              Icons.remove,
                              color: Theme.of(context).secondaryHeaderColor,
                              size: 20.sp,
                            ),
                          ),
                          Text(
                            '$quantity',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                quantity++;
                              });
                            },
                            icon: Icon(
                              Icons.add,
                              color: Theme.of(context).secondaryHeaderColor,
                              size: 20.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Positioned(
                  //   bottom: 10,
                  //   left: 10,
                  //   child: Container(
                  //     padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                  //     color: Colors.white,
                  //     child: Row(
                  //       children: [
                  //         Icon(
                  //           Icons.star,
                  //           color: Colors.red,
                  //           size: 16,
                  //         ),
                  //         SizedBox(width: 2),
                  //         Text(
                  //           "4.5",
                  //           style: TextStyle(
                  //             fontSize: width < 400 ? 12 : 12 + width * 0.005,
                  //             color: Colors.grey,
                  //             fontWeight: FontWeight.w600,
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
            SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, bottom: 6.0, top: 3.0, right: 8.0),
              child: Text(
                widget.items["name"],
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: width < 400 ? 16 : 16 + width * 0.002,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "₹ 499",
                        style: TextStyle(
                          fontSize: width < 400 ? 14 : 14 + width * 0.002,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "₹ 399",
                        style: TextStyle(
                          fontSize: width < 400 ? 16 : 16 + width * 0.002,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "250 g",
                    style: TextStyle(
                      fontSize: width < 400 ? 12 : 12 + width * 0.005,
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
