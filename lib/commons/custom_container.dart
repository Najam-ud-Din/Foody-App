import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/constants/constants.dart';
import 'package:foody/commons/Applayout.dart';

class Customcontainer extends StatelessWidget {
  final Widget Containercontent;
  const Customcontainer({super.key, required this.Containercontent});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      width: Applayout.getscreenWidth(),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.r),
          bottomRight: Radius.circular(30.r),
        ),
        child: Container(
            width: Applayout.getscreenWidth(),
            color: kOffWhite,
            child: SingleChildScrollView(
              child: Containercontent,
            )),
      ),
    );
  }
}
