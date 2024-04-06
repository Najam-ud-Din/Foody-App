import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/constants/constants.dart';

class Customcontainer extends StatelessWidget {
  final Widget Containercontent;
  const Customcontainer({super.key, required this.Containercontent});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          //topLeft: Radius.circular(10.r),
          //topRight: Radius.circular(10.r),
          bottomLeft: Radius.circular(30.r),
          bottomRight: Radius.circular(30.r),
        ),
        child: Container(
          width: width,
          color: kOffWhite,
          child: SingleChildScrollView(
            child: Containercontent,
          ),
        ),
      ),
    );
  }
}
