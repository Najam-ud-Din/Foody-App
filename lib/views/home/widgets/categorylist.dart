import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/constants/constants.dart';
import 'package:foody/constants/uidata.dart';
import 'package:foody/controllers/categorycontroller.dart';
import 'package:foody/views/cart/cart_page.dart';
import 'package:foody/views/categories/all_categories.dart';
import 'package:get/get.dart';

class Categorylist extends StatelessWidget {
  const Categorylist({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(categorycontroller());
    return Container(
      height: 80.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(categories.length, (i) {
          var category = categories[i];
          return GestureDetector(
            onTap: () {
              if (controller.CategoryValue == category['_id']) {
                controller.updatecategory = '';
                controller.updatetitle = '';
              } else if (controller.titleValue == 'More') {
                Get.to(() => AllCategories(),
                    transition: Transition.fadeIn,
                    duration: Duration(milliseconds: 900));
              } else {
                controller.updatecategory = category['_id'];
                controller.updatetitle = category['title'];
              }
            },
            child: Obx(
              () => Container(
                margin: EdgeInsets.only(right: 7.w),
                padding: EdgeInsets.only(top: 4.h),
                width: width * 0.19,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                      color: controller.CategoryValue == category['_id']
                          ? kSecondary
                          : kOffWhite,
                      width: 1.w),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.h,
                      child: Image.network(
                        category['imageUrl'],
                        errorBuilder: (context, error, stackTrace) {
                          return Text("error");
                        },
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      category['title'],
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: kDark),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
