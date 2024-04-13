import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/commons/backgroundcontainer.dart';
import 'package:foody/constants/constants.dart';
import 'package:foody/constants/uidata.dart';
import 'package:foody/views/categories/categorypage.dart';
import 'package:get/get.dart';

import 'widgets/categorytile.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kOffWhite,
        title: Text(
          "All categories",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: kGray),
        ),
      ),
      body: backgroundContainer(
        color: Colors.white,
        Child: Container(
          padding: EdgeInsets.only(left: 12.w, top: 10.h),
          height: height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(categories.length, (i) {
              var category = categories[i];
              return categorytile(category: category);
            }),
          ),
        ),
      ),
    );
  }
}
