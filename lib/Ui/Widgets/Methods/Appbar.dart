import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Router/RouterPath.dart';
import '../../../Style/Images.dart';

AppBar appBar(BuildContext context) {
  var width=MediaQuery.of(context).size.width;
  return AppBar(
    // actionsIconTheme: IconThemeData(
    //   color: Theme.of(context).colorScheme.secondary,
    // ),
    leading: null,
    title:Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Hello,",style: TextStyle(
          color: Colors.black,
          fontSize: width < 400 ? 16 : 16 + width * 0.01,
          letterSpacing: 1.2,
          fontWeight: FontWeight.w800,
        ),
        ),
        SizedBox(width: 2,),
        Text("John Devid",style: TextStyle(
          color: Colors.grey.shade600,
          fontSize: width < 400 ? 16 : 16 + width * 0.01,
          letterSpacing: 1.2,
          fontWeight: FontWeight.w400,
        ),
        ),

      ],
    ),
    centerTitle:false,
    titleSpacing:10,
    backgroundColor:Colors.white,
    actions: [

      _iconaction(context, width,AssetPaths.searchIcon,Routerpath.search),
      _iconaction(context, width,AssetPaths.notification,Routerpath.notification),
      _iconaction(context, width,AssetPaths.scan,Routerpath.search),



    ],

  );
}

Container _iconaction(BuildContext context, double width,iconPath,url) {
  return Container(
      child: IconButton(
            onPressed: (){
              Navigator.pushNamed(context,url );
            },
            icon: SvgPicture.asset(iconPath,
              width: width < 400 ? 24 : 24 + width * 0.01,
              height: width < 400 ? 24 : 24 + width * 0.01,
              fit: BoxFit.cover,
            ),
          ),
    );
}