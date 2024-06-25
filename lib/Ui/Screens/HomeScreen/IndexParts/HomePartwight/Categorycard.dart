import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../Router/RouterPath.dart';

Container catgorycard(int itemIndex, double width,items,double height,BuildContext context) {
  return itemIndex!=null? Container(
    clipBehavior: Clip.antiAlias,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: items[itemIndex]['color'],
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.grey.withOpacity(0.2),
      //     spreadRadius: 1,
      //     blurRadius: 1,
      //     offset: Offset(0, 1), // changes position of shadow
      //   ),
      // ],
    ),
    child: GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          Routerpath.productListpast,
          arguments: items[itemIndex]['name'],
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
          Container(
                width: width*0.3,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 20,
      
                ),
                child: Text(
                      items[itemIndex]['name'],
                      maxLines: 2,
                      style: TextStyle(
                        letterSpacing: 1.2,
                        fontSize: width < 400 ? 13 : 13 + width * 0.01,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
              ),
              Container(
                width:width < 400 ? 30.w : 30.w + width * 0.01,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      color: Colors.transparent
                  ),
                  child:Image.asset(
                    items[itemIndex]['image'],
                    width: 50.w,
                    height: 10.h,
                    fit: BoxFit.cover,
                  ),
              ),
      
      
          ]
      ),
    ),
  ):Container();
}