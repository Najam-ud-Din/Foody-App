import 'package:flutter/material.dart';
import 'package:foody/constants/constants.dart';

class backgroundContainer extends StatelessWidget {
  final Widget Child;
  final Color color;
  const backgroundContainer(
      {super.key, required this.Child, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/restaurant_bk.png'),
              fit: BoxFit.cover,
              opacity: 0.7),
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Child,
    );
  }
}
