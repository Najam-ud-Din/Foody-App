import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/commons/custom_container.dart';
import 'package:foody/constants/constants.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimary,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h),
          child: Container(
            height: 110,
          ),
        ),
        body: SafeArea(
            child: Customcontainer(
          Containercontent: Container(),
        )));
  }
}
