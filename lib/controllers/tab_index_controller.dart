import 'package:flutter/src/widgets/framework.dart';
import 'package:flw_startup/views/cart/cart_page.dart';
import 'package:flw_startup/views/home/home_page.dart';
import 'package:flw_startup/views/profile/profile_page.dart';
import 'package:flw_startup/views/search/search_page.dart';
import 'package:get/get.dart';

class TabIndexController extends GetxController {
  final RxInt _tabIndex = 0.obs;

  List<StatelessWidget> pages = [
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage()
  ];

  int get tabIndex => _tabIndex.value;

  set tabIndex(int value) {
    _tabIndex.value = value;
  }
}
