import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  // variables

  final carouselController = CarouselSliderController();
  var currentBannerIndex = 0.obs;

  // methods onpage change
  void onBannerPageChanged(int index) {
    currentBannerIndex.value = index;
  }
}