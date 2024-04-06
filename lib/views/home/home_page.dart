import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/commons/custom_appbar.dart';
import 'package:foody/commons/custom_container.dart';
import 'package:foody/constants/constants.dart';
import 'package:foody/views/home/widgets/categorylist.dart';

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
              child: CustomAppbar()),
        ),
        body: SafeArea(
            child: Customcontainer(
          Containercontent: Column(
            children: [
              Categorylist(),
            ],
          ),
        )));
  }
}
