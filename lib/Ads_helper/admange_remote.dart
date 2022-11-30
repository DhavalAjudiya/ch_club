import 'package:ch_hub/Ads_helper/ad_constant.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class FirebaseRemoteConfigUtils {
  static final FirebaseRemoteConfigUtils _configUtils = FirebaseRemoteConfigUtils._internal();

  factory FirebaseRemoteConfigUtils() {
    return _configUtils;
  }

  FirebaseRemoteConfigUtils._internal();

  static const String testingId = 'fb_test_id';
  static const String fbBannerID = 'fb_banner_id';
  static const String fbInterID = 'fb_inter_id';
  static const String mobBanner = 'mob_banner_id';
  static const String mobInter = 'mob_inter_id';
  static const String mobOpen = 'mob_open_id';
  static const String privacy = 'privacy';

  static final FirebaseRemoteConfig _remoteConfig = FirebaseRemoteConfig.instance;

  static String get fbTestId => _remoteConfig.getString(testingId);
  static String get fbBannerAdId => _remoteConfig.getString(fbBannerID);
  static String get fbInterAdId => _remoteConfig.getString(fbInterID);
  static String get adMobBannerId => _remoteConfig.getString(mobBanner);
  static String get adMobInterId => _remoteConfig.getString(mobInter);
  static String get adMobOpenId => _remoteConfig.getString(mobOpen);
  static String get appPrivacy => _remoteConfig.getString(privacy);

  Future<void> initMethod() async {
    try {
      final remoteConfig = FirebaseRemoteConfig.instance;
      await remoteConfig.setConfigSettings(
        RemoteConfigSettings(fetchTimeout: const Duration(seconds: 1), minimumFetchInterval: const Duration(seconds: 0)),
      );
      await _remoteConfig.fetchAndActivate();
      print("adMobBannerId------fbTestId--${fbTestId}");
    } catch (e) {
      print(e);
    }
  }

  static Future<void> getAdID() async {
    AdConstants.bannerAdsId = adMobBannerId;
    AdConstants.interstitialId = adMobInterId;
    AdConstants.appOpenAdsId = adMobOpenId;
    AdConstants.faceBookBannerAdsId = fbBannerAdId;
    AdConstants.faceBookInterstitialId = fbInterAdId;
    AdConstants.faceBookTestId = fbTestId;

    print("adMobBannerId--------${AdConstants.bannerAdsId}");
    print("adMobInterId--------${AdConstants.bannerAdsId}");
    print("adMobOpenId--------${AdConstants.bannerAdsId}");
    print("fbBannerAdId--------${AdConstants.bannerAdsId}");
    print("fbInterAdId--------${AdConstants.bannerAdsId}");
    print("fbTestId--------${AdConstants.bannerAdsId}");
  }

  /// realtime
}
