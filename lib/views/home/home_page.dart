import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/commons/custom_appbar.dart';
import 'package:foody/commons/custom_container.dart';
import 'package:foody/commons/heading.dart';
import 'package:foody/constants/constants.dart';
import 'package:foody/views/home/widgets/FeatestFoods.dart';
import 'package:foody/views/home/widgets/allnearbrestaurant.dart';
import 'package:foody/views/home/widgets/categorylist.dart';
import 'package:foody/views/home/widgets/foodlist.dart';
import 'package:foody/views/home/widgets/nearby_reslist.dart';
import 'package:foody/views/home/widgets/recommendation.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimary,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h),
          child: Container(
              padding: EdgeInsets.only(top: 35.h),
              color: Colors.white,
              height: 100,
              child: const CustomAppbar()),
        ),
        body: SafeArea(
            child: Customcontainer(
          Containercontent: Column(
            children: [
              Categorylist(),
              Heading(
                text: "Nearby Restaurant",
                ontapped: () {
                  Get.to(() => NearRestaurant(),
                      transition: Transition.cupertino,
                      duration: Duration(milliseconds: 900));
                },
              ),
              NearbyrestaurantList(),
              Heading(
                  text: "Try Something new",
                  ontapped: () {
                    Get.to(() => RecommandationPage(),
                        transition: Transition.cupertino,
                        duration: Duration(milliseconds: 900));
                  }),
              FoodList(),
              Heading(
                  text: "Fastest Food closer to you",
                  ontapped: () {
                    Get.to(() => FasterFoodpage(),
                        transition: Transition.cupertino,
                        duration: Duration(milliseconds: 900));
                  }),
              FoodList(),
            ],
          ),
        )));
  }
}
