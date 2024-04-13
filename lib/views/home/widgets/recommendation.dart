import 'package:flutter/material.dart';

class RecommandationPage extends StatelessWidget {
  const RecommandationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All nearby reataurant"),
      ),
      body: Center(
        child: Text("Nearby reataurant"),
      ),
    );
  }
}
