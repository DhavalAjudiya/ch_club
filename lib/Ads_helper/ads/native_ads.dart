import 'package:ch_hub/Ads_helper/ad_constant.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class NativeAds extends StatefulWidget {
  static bool isLoaded = false;

  NativeAds({
    Key? key,
  }) : super(key: key);

  @override
  State<NativeAds> createState() => _NativeAdsState();
}

class _NativeAdsState extends State<NativeAds> {
  NativeAd? _ad;
  bool isAdError = false;

  @override
  void initState() {
    super.initState();
    loadNativeAd();
    // _ad?.load();
  }

  void loadNativeAd() {
    print('NativeAd onAdLoaded----: ${AdConstants.bannerAdsId}');

    _ad = NativeAd(
      request: const AdRequest(),
      adUnitId: AdConstants.nativeAdsId,
      // adUnitId: "ca-app-pub-3940256099942544/6300978111",
      factoryId: "listTile",
      nativeAdOptions: NativeAdOptions(
          videoOptions: VideoOptions(
        clickToExpandRequested: true,
      )),
      listener: NativeAdListener(
        onAdLoaded: (ad) {
          print('NativeAd onAdLoaded----: load');

          setState(() {
            NativeAds.isLoaded = true;
            // isLoaded = AdConstants.isShowNativeAds ;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          print('failed to load the ad ${error.message}, ${error.code}');
          print('NativeAd onAdLoaded----: error');
        },
      ),
    );
    _ad?.load();
  }

  @override
  Widget build(BuildContext context) {
    if (AdConstants.isShowAdsOrNot == true) {
      if (NativeAds.isLoaded) {
        print(" NativeAds.isLoaded -----${NativeAds.isLoaded}");
        if (isAdError == true) {
          return Container(
            alignment: Alignment.center,
            height: SizeUtils.verticalBlockSize * 20,
            // color: Colors.transparent,
            // color: Colors.black12,
            child: AdWidget(
              ad: _ad!,
            ),
          );
        }
        return AdConstants.isShowFacebookBannerAds
            ? Container(
                height: 140,
                alignment: const Alignment(0.5, 1),
                child: FacebookNativeAd(
                  placementId: AdConstants.faceBookNativeAdsId,
                  // placementId: "IMG_16_9_APP_INSTALL#2312433698835503_2964953543583512",
                  adType: NativeAdType.NATIVE_BANNER_AD,
                  height: 120,
                  bannerAdSize: NativeBannerAdSize.HEIGHT_120,
                  width: double.infinity,
                  isMediaCover: true,
                  backgroundColor: Colors.blue,
                  titleColor: Colors.white,
                  descriptionColor: Colors.white,
                  buttonColor: Colors.deepPurple,
                  buttonTitleColor: Colors.white,
                  buttonBorderColor: Colors.white,
                  listener: (result, value) {
                    print("Native Banner Ad: $result --> $value");
                    if (result == NativeAdResult.ERROR &&
                        value["invalidated"] == true) {
                      setState(() {
                        print("Native Banner error: $result --> $value");
                        isAdError = true;
                        // isLoaded = AdConstants.isShowNativeAds ;
                      });
                    }
                  },
                  keepExpandedWhileLoading: true,
                  keepAlive: true,
                  expandAnimationDuraion: 1000,
                ),
              )
            : Container(
                alignment: Alignment.center,
                height: SizeUtils.verticalBlockSize * 20,
                // color: Colors.transparent,
                // color: Colors.black12,
                child: AdWidget(
                  ad: _ad!,
                ),
              );
      } else {
        return const SizedBox();
      }
    } else {
      return const SizedBox();
    }
  }

  @override
  void dispose() {
    _ad?.dispose();

    super.dispose();
  }
}
