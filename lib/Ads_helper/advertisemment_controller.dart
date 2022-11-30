import 'dart:async';

import 'package:ch_hub/Ads_helper/Ad_modal.dart';
import 'package:ch_hub/Ads_helper/ad_constant.dart';
import 'package:ch_hub/Ads_helper/admange_remote.dart';
import 'package:ch_hub/Ads_helper/ads_utils.dart';
import 'package:ch_hub/Ads_helper/open_app_ads.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter_fgbg/flutter_fgbg.dart';
import 'package:get/get.dart';

class AdvertisementController extends GetxController {
  @override
  void onInit() {
    // getAdID();
    advertisementData();

    super.onInit();
  }

  late StreamSubscription<FGBGType> subscription;
  AppOpenAdManager appOpenAdManager = AppOpenAdManager();

  Rx<Adsmodel> adsmodel = Adsmodel().obs;
  Future<void> advertisementData() async {
    await FirebaseFirestore.instance.collection('AdvertisementData').get().then((QuerySnapshot<Map<String, dynamic>> value) {
      value.docs.forEach((element) {
        print("element-----------0-${element.data()}");
        adsmodel.value = Adsmodel.fromDocumentSnapshot(element);
        // onBoardingModalList.value.add(onBoardingModal.value);
        // print("element-----------1-${onBoardingModalList.value.first.businessName}");
        AdConstants.bannerAdsId = adsmodel.value.bannerId!;
        AdConstants.interstitialId = adsmodel.value.interstitialId!;
        AdConstants.appOpenAdsId = adsmodel.value.appOpenAdsId!;
        AdConstants.faceBookBannerAdsId = adsmodel.value.faceBookBannerId!;
        AdConstants.faceBookInterstitialId = adsmodel.value.faceBookInterstitialId!;
        AdConstants.faceBookTestId = adsmodel.value.faceBookTestId!;
        FacebookAudienceNetwork.init(
          testingId: adsmodel.value.faceBookTestId!,
          iOSAdvertiserTrackingEnabled: true,
        );
        print("adMobBannerId--------${AdConstants.bannerAdsId}");
        print("adMobInterId--------${AdConstants.interstitialId}");
        print("adMobOpenId--------${AdConstants.appOpenAdsId}");
        print("fbBannerAdId--------${AdConstants.faceBookBannerAdsId}");
        print("fbInterAdId--------${AdConstants.faceBookInterstitialId}");
        print("fbTestId--------${AdConstants.faceBookTestId}");

        appInForGroundOrBackGround();

        AdsUtils.loadInterstitialAds();
        print('docsOfModel--------8');
      });
    });
  }

  void appInForGroundOrBackGround() {
    // print('app open id is come 111----->>>>${AdConstants.appOpenAdsId}');
    if (AdConstants.isShowAdsOrNot == true) {
      // print('app open id is come 222----->>>>${AdConstants.appOpenAdsId}');
      subscription = FGBGEvents.stream.listen((event) async {
        appOpenAdManager.loadAd(id: AdConstants.appOpenAdsId);
        if (event == FGBGType.foreground) {
          if (!AppOpenAdManager.isShowingAd) {
            appOpenAdManager.showAdIfAvailable();
          }
        }
        if (event == FGBGType.background) {
          appOpenAdManager.loadAd(id: AdConstants.appOpenAdsId);
        }
      });
    }
  }
}
