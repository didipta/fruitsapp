
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodecommerce/Ui/Screens/HomeScreen/IndexParts/Homepart.dart';
import 'package:foodecommerce/Ui/Screens/Productcartscreen/Productcart.dart';
import 'package:foodecommerce/Ui/Screens/ProfileScreen/ProfileScreen.dart';
import 'package:foodecommerce/Ui/Screens/Wishlistscreen/WishlistScreen.dart';

import '../../../Style/Images.dart';
import '../../Widgets/ListItemCarousel.dart';
import '../Categoryscreen/CategoryScreen.dart';

IndexedStack homePageIndex (_selectedIndex,context) {
  var width=MediaQuery.of(context).size.width;
  return IndexedStack(
    index: _selectedIndex,
    children: [
      SingleChildScrollView(child:Homepart()),
      Categoryscreen(),
      Wishlistscreen(),
      Productcart(),
      Profilescreen(),


    ],
  );
}





