import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/commons/custom_appbar.dart';
import 'package:foody/commons/custom_container.dart';
import 'package:foody/constants/constants.dart';

class profilepage extends StatelessWidget {
  const profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimary,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h),
          child: CustomAppbar(),
        ),
        body: SafeArea(
            child: Customcontainer(
          Containercontent: Container(),
        )));
  }
}
