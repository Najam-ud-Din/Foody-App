import 'package:flutter/material.dart';
import 'package:foody/constants/constants.dart';
import 'package:foody/controllers/tab_controller.dart';
import 'package:foody/views/cart/cart_page.dart';
import 'package:foody/views/home/home_page.dart';
import 'package:foody/views/profile/profile_page.dart';
import 'package:foody/views/search/search_page.dart';
import 'package:get/get.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pagelist = [
    HomePage(),
    searchpage(),
    CartPage(),
    profilepage(),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(() => Scaffold(
          body: Stack(
            children: [
              pagelist[controller.tabindex],
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                    data: Theme.of(context).copyWith(canvasColor: kPrimary),
                    child: BottomNavigationBar(
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      unselectedIconTheme: IconThemeData(color: Colors.black38),
                      selectedIconTheme: IconThemeData(color: kSecondary),
                      onTap: (Value) {
                        controller.settabindex = Value;
                      },
                      currentIndex: controller.tabindex,
                      items: [
                        BottomNavigationBarItem(
                            icon: controller.tabindex == 0
                                ? Icon(AntDesign.appstore1)
                                : Icon(AntDesign.appstore_o),
                            label: "Home"),
                        BottomNavigationBarItem(
                            icon: controller.tabindex == 2
                                ? Icon(AntDesign.search1)
                                : Icon(AntDesign.search1),
                            label: "Search"),
                        BottomNavigationBarItem(
                            icon: Badge(
                                label: Text('2'),
                                child: Icon(FontAwesome.opencart)),
                            label: "Cart"),
                        BottomNavigationBarItem(
                            icon: controller.tabindex == 3
                                ? Icon(FontAwesome.user_circle_o)
                                : Icon(FontAwesome.user_circle),
                            label: "Profile")
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}
