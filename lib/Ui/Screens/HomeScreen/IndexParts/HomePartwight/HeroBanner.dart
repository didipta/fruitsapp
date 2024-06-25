import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Container listcard(int itemIndex, double width, items, double height, BuildContext context) {
  return itemIndex != null ? Container(
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: items[itemIndex]['color'],
    ),
    child: Stack(
      children: [
        Image.asset(
          items[itemIndex]['image'],
          width: width,
          height: 150,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            width: 90.w,
            clipBehavior: Clip.antiAlias,
            padding: EdgeInsets.only(
                left: 10,
                right: 20,
                top: 5,
                bottom: 5
            ),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.85)
            ),
            height: 8.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[itemIndex]['title'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: width < 400 ? 12 : 12 + width * 0.01,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        items[itemIndex]['subtitle'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: width < 400 ? 10 : 10 + width * 0.01,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "\$" + items[itemIndex]['price'],
                        style: TextStyle(
                          fontSize: width < 400 ? 12 : 12 + width * 0.01,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Vat & Tax \$1.99",
                        style: TextStyle(
                          fontSize: width < 400 ? 10 : 10 + width * 0.01,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  ) : Container();
}
