import 'package:cloud_firestore/cloud_firestore.dart';

class AdConstants {
  // static int firstCoolDown = 20;
  // static int secondCoolDown = 40;

  /// for banner Add
  static int id = 0;
  static String url = '';
  static String redirectionLink = '';
  static bool status = false;
  static bool isForGround = true;

  static String facebookInterstitialAdUnitId = "";
  static bool isShowFacebookInterstitialAds = true;
  static bool isShowAdsOrNot = true;

  static String facebookBannerAdUnitId = "";
  static bool isShowFacebookBannerAds = false;

  ///

  static bool isShowUpdateDialogOrNot = false;
  static String updateAppVersionCode = '';

  ///
  // static String appOpenAdsId = 'ca-app-pub-3940256099942544/3419835294';
  // static String appOpenAdsId = '';
  // static bool isShowOpenAppAds = FirebaseRemoteConfigUtils.isOpenAdsShowOrNot;

  static String bannerAdsId = "";
  static String interstitialId = '';
  static String appOpenAdsId = '';
  static String faceBookBannerAdsId = "";
  static String faceBookInterstitialId = '';
  static String faceBookTestId = '';
}
