import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodecommerce/Ui/Screens/Categoryscreen/CategoryScreen.dart';
import 'package:foodecommerce/Ui/Screens/Notificationscreen/Notification.dart';
import 'package:foodecommerce/Ui/Screens/Productcartscreen/Checkoutscreen.dart';
import 'package:foodecommerce/Ui/Screens/shoppingList/Shoppinglist.dart';
import '../Ui/Screens/HomeScreen/HomeScreen.dart';
import '../Ui/Screens/ProductDetailsscreen/ProductDetails.dart';
import '../Ui/Screens/Searchscreen/Searchscreen.dart';
import '../Ui/Screens/SubCategoryProductlist/ProductList.dart';
import '../Ui/Screens/shoppingList/Listrecommendations.dart';
import 'RouterPath.dart';

MaterialPageRoute? materialPageRoute(RouteSettings settings) {
  Widget? widget;
  switch (settings.name) {
    case Routerpath.homepath:
      widget = const Homescreen();
      break;
    case Routerpath.categorypath:
      widget = const Categoryscreen();
      break;
    case Routerpath.productListpast:
      String categoryname = settings.arguments as String;
      widget = Productlist(
        category: categoryname,
      );
      break;
    case Routerpath.productDetail:
      String productname = settings.arguments as String;
      widget = Productdetails(
        productname: productname,
      );
      break;
    case Routerpath.checkout:
      widget = const Checkoutscreen();
      break;
    case Routerpath.shoppinglist:
      widget = const Shoppinglist();
      break;
    case Routerpath.notification:
      widget = const Notificationscreen();
      break;
    case Routerpath.search:
      widget = const Searchscreen();
      break;
    case Routerpath.listrecommendations:
      widget = const Listrecommendations();
      break;
  }
  if (widget != null) {
    return MaterialPageRoute(builder: (context) => widget!);
  }

  return null;
}
