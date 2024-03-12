import 'package:e_commerce/ui/views/navi_pages/cart.dart';
import 'package:e_commerce/ui/views/navi_pages/faviorite.dart';
import 'package:e_commerce/ui/views/navi_pages/home.dart';
import 'package:e_commerce/ui/views/navi_pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Bottom_Navi extends StatelessWidget {
  Bottom_Navi({super.key});
  RxInt _currentindex = 0.obs;

  final _pages = [Home_P(), Faviorite(), Cart(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          bottomNavigationBar: SalomonBottomBar(
            currentIndex: _currentindex.value,
            onTap: (value) {
              _currentindex.value = value;
            },
            items: [
              bottomNavi(Icons.home, "Home"),
              bottomNavi(Icons.favorite, "Faviorite"),
              bottomNavi(Icons.shopping_bag, "Cart"),
              bottomNavi(Icons.person, "Profile"),
            ],
          ),
          body: _pages[_currentindex.value],
        ));
  }
}

SalomonBottomBarItem bottomNavi(icon, title) =>
    SalomonBottomBarItem(icon: Icon(icon), title: Text(title));
