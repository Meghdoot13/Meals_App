//THIS IS THE HOMEPAGE OF OUR APP
import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import 'package:meals_app/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map(
              (catData) => CategoryItem(
                catData.id,
                catData.title,
                catData.color,
              ),
            )
            .toList(), // typical way of mapping each category for display
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, //for width of each category
          childAspectRatio: 3 / 2, //width : height
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        // the above 4 lines is a typical 4 lines of code 
        //for Gridview() widget
    );
  }
}
