import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/constants/constants.dart';
import 'package:foody/views/categories/categorypage.dart';
import 'package:get/get.dart';

class categorytile extends StatelessWidget {
  final dynamic category;
  categorytile({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(
          () => CategoryPage(),
          transition: Transition.fadeIn,
          duration: Duration(milliseconds: 600),
        );
      },
      leading: CircleAvatar(
        radius: 18.r,
        backgroundColor: kGrayLight,
        child: Image.network(
          category['imageUrl'],
          fit: BoxFit.contain,
        ),
      ),
      title: Text(
        category['title'],
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.normal, color: kGray),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: kGray,
        size: 15.r,
      ),
    );
  }
}
