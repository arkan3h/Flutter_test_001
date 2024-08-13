import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductImageController extends GetxController {
  static ProductImageController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;
}