import 'package:ch_hub/Ads_helper/advertisemment_controller.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AdvertisementController>(AdvertisementController());
  }
}
