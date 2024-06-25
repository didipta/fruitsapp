import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Router/RouterGenerator.dart';
import 'Router/RouterPath.dart';
import 'Style/ThemeData.dart';

class FoodEcommerceapp extends StatelessWidget {
  const FoodEcommerceapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appThemeData(Theme.of(context).textTheme),
      initialRoute: Routerpath.initialRoute,
      onGenerateRoute:materialPageRoute,
    );
  }


}
