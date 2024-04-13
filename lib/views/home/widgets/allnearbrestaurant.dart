import 'package:flutter/material.dart';
import 'package:foody/constants/constants.dart';

class NearRestaurant extends StatelessWidget {
  NearRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title: Text("All nearby reataurant"),
      ),
      body: Center(
        child: Text("Nearby reataurant"),
      ),
    );
  }
}
