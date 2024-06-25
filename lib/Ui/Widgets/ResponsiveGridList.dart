import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; // Needed for Colors and other Material widgets
import 'package:responsive_grid_list/responsive_grid_list.dart';

class ResponsiveGridListview extends StatelessWidget {
  const ResponsiveGridListview({
    Key? key,
    required this.items,
    required this.minWidth,
    required this.minItemsPerRow, required this.listView, required this.gap,

  }) : super(key: key);

  final List<Widget> items;
  final double minWidth;
  final int minItemsPerRow;
  final bool listView ;
  final double gap;

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridList(
      shrinkWrap: true,
      listViewBuilderOptions:listView ? ListViewBuilderOptions(
        primary: true,
        physics: NeverScrollableScrollPhysics(),
      ): null,
      verticalGridSpacing: gap,
      horizontalGridSpacing: gap,
      horizontalGridMargin: gap,
      verticalGridMargin: gap,
      minItemsPerRow: minItemsPerRow,
      minItemWidth: minWidth,
      children: List.generate(
        items.length,
            (index) => items[index],
      ),
    );
  }
}