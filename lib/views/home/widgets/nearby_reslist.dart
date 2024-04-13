import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/constants/constants.dart';
import 'package:foody/constants/uidata.dart';

class NearbyrestaurantList extends StatelessWidget {
  const NearbyrestaurantList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(restaurants.length, (i) {
          var restaurant = restaurants[i];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200.h,
              width: 190.w,
              color: kPrimary,
            ),
          );
        }),
      ),
    );
  }
}
