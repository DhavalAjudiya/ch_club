import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class AdController extends GetxController {
  Future<void> getAdsData() async {
    await FirebaseFirestore.instance.collection('AdvertisementData').doc("updateAdvertisementData").set({
      'adsShowOrNot': true,
      'interstitialId': 'ca-app-pub-3940256099942544/1033173712',
      'bannerId': 'ca-app-pub-3940256099942544/6300978111',
      // 'firstCountDown': int.parse(firstCountDownController.text),
      // 'secondCountDown': int.parse(secondCountDownController.text),
      'firstCountDown': '5',
      'secondCountDown': '7',
      'faceBookInterstitialId': 'IMG_16_9_APP_INSTALL#2312433698835503_2650502525028617',
      'faceBookBannerId': 'IMG_16_9_APP_INSTALL#2312433698835503_2964944860251047',
      'appOpenAdsId': 'ca-app-pub-3940256099942544/3419835294',
      'adMobOrFaceBook': 'facebook',
      // 'docId': docId,
    });
  }
}
