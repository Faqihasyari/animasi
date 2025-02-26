import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt current = 0.obs;
  final CarouselSliderController corouselC = CarouselSliderController();
}
