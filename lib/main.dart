import 'package:ch_hub/Ads_helper/admange_remote.dart';
import 'package:ch_hub/ch_hub.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await MobileAds.instance.initialize();
  await FirebaseRemoteConfigUtils().initMethod();
  loadAppOpenAd();
  runApp(CHCLUB());
}

AppOpenAd? myAppOpenAd;
const String appOpenId = "ca-app-pub-3940256099942544/3419835294";

void loadAppOpenAd() {
  AppOpenAd.load(
      // adUnitId: "ca-app-pub-3940256099942544/3419835294",
      adUnitId: appOpenId,
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
          onAdLoaded: (ad) {
            myAppOpenAd = ad;
            myAppOpenAd!.show();
          },
          onAdFailedToLoad: (error) {}),
      orientation: AppOpenAd.orientationPortrait);
}
