import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/constants/constants.dart';
import 'package:foody/constants/uidata.dart';
import 'package:foody/controllers/categorycontroller.dart';
import 'package:foody/views/cart/cart_page.dart';
import 'package:foody/views/categories/all_categories.dart';
import 'package:get/get.dart';

import 'categorywidget.dart';

class Categorylist extends StatelessWidget {
  const Categorylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(categories.length, (i) {
          var category = categories[i];
          return categorywidget(category: category);
        }),
      ),
    );
  }
}
