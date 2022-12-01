import 'dart:io';

import 'package:ch_hub/Ads_helper/ads_utils.dart';
import 'package:ch_hub/Ads_helper/full_banner_ads.dart';
import 'package:ch_hub/res/app_colors.dart';
import 'package:ch_hub/res/assets_path.dart';
import 'package:ch_hub/res/strings_utils.dart';
import 'package:ch_hub/utils/navigation_utils/navigation.dart';
import 'package:ch_hub/utils/navigation_utils/routes.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:ch_hub/widget/app_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        exit(0);
      },
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(AssetsPath.spalsh))),
            child: Padding(
              padding: EdgeInsets.only(
                left: SizeUtils.horizontalBlockSize * 3.5,
                right: SizeUtils.horizontalBlockSize * 3.5,
                top: SizeUtils.horizontalBlockSize * 2,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      AppString.cashHub,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: SizeUtils.fSize_25(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: SizeUtils.horizontalBlockSize * 4),
                      child: SizedBox(
                        height: SizeUtils.verticalBlockSize * 25,
                        child: const Center(child: FullBannerAds()),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("show -- showInterstitialAds--1-");
                            AdsUtils.showInterstitialAds();
                            print("show -- showInterstitialAds--2-");

                            Navigation.pushNamed(Routes.adharCard);
                          },
                          child: Image.asset(
                            AssetsPath.adharLoan,
                            width: SizeUtils.horizontalBlockSize * 45,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            AdsUtils.showInterstitialAds();

                            Navigation.pushNamed(Routes.instantLoan);
                          },
                          child: Image.asset(
                            AssetsPath.instantLoan,
                            width: SizeUtils.horizontalBlockSize * 45,
                          ),
                        ),
                        // headerContainer(
                        //   color: AppColor.blueContainer,
                        //   image: AssetsPath.adhar,
                        //   text: AppString.adharCardLoan,
                        //   isChange: true,
                        // ),
                        // headerContainer(
                        //   color: AppColor.orangContainer,
                        //   image: AssetsPath.intsLoan,
                        //   text: AppString.instanstLoan,
                        //   isChange: true,
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: SizeUtils.horizontalBlockSize * 7,
                    ),
                    typeContainer(
                      width: SizeUtils.horizontalBlockSize * 6.5,
                      image: AssetsPath.loanGuid,
                      text: AppString.loanGuid,
                      gradient: const LinearGradient(
                        colors: [AppColor.loanGuid, AppColor.loanGuid2],
                      ),
                      onTap: () {
                        AdsUtils.showInterstitialAds();

                        Navigation.pushNamed(Routes.loanGuidePage);
                      },
                    ),
                    typeContainer(
                      onTap: () {
                        AdsUtils.showInterstitialAds();

                        Navigation.pushNamed(Routes.epsService);
                      },
                      width: SizeUtils.horizontalBlockSize * 7,
                      image: AssetsPath.eps,
                      text: AppString.eps,
                      gradient: const LinearGradient(
                        colors: [AppColor.eps, AppColor.eps2],
                      ),
                    ),
                    typeContainer(
                      onTap: () {
                        AdsUtils.showInterstitialAds();

                        Navigation.pushNamed(Routes.loanTypePage);
                      },
                      width: SizeUtils.horizontalBlockSize * 8,
                      image: AssetsPath.intsLoan,
                      text: AppString.loanType,
                      gradient: const LinearGradient(
                        colors: [AppColor.loanType, AppColor.loanType2],
                      ),
                    ),
                    typeContainer(
                      onTap: () {
                        AdsUtils.showInterstitialAds();

                        Navigation.pushNamed(Routes.bankHolidayPage);
                      },
                      width: SizeUtils.horizontalBlockSize * 11,
                      image: AssetsPath.beach,
                      text: AppString.bankHoliday,
                      gradient: const LinearGradient(
                        colors: [AppColor.bankHolioday, AppColor.bankHolioday2],
                      ),
                    ),
                    typeContainer(
                      onTap: () {
                        AdsUtils.showInterstitialAds();

                        Navigation.pushNamed(Routes.bankInfoPage);
                      },
                      width: SizeUtils.horizontalBlockSize * 7,
                      image: AssetsPath.bank,
                      text: AppString.bankInfo,
                      gradient: const LinearGradient(
                        colors: [AppColor.bankinfo, AppColor.bankinfo2],
                      ),
                    ),
                    typeContainer(
                      onTap: () {},
                      width: SizeUtils.horizontalBlockSize * 7,
                      image: AssetsPath.location,
                      text: AppString.nearBy,
                      gradient: const LinearGradient(
                        colors: [AppColor.near, AppColor.near2],
                      ),
                    ),
                    SizedBox(
                      height: SizeUtils.verticalBlockSize * 2,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  headerContainer({
    Color? color,
    // Colors? greColors,
    String image = "",
    String text = "",
    bool isChange = false,
  }) {
    return Container(
        width: SizeUtils.horizontalBlockSize * 45,
        height: SizeUtils.verticalBlockSize * 12,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: SizeUtils.horizontalBlockSize * 7,
              color: AppColor.white,
            ),
            SizedBox(
              height: SizeUtils.horizontalBlockSize * 2,
            ),
            AppText(
              text,
              color: AppColor.white,
              fontSize: SizeUtils.fSize_18(),
            ),
          ],
        ));
  }

  typeContainer({
    String image = "",
    String text = "",
    Gradient? gradient,
    bool isChange = false,
    double? width,
    final GestureTapCallback? onTap,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 4),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: SizeUtils.verticalBlockSize * 7,
          decoration: BoxDecoration(gradient: gradient, borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeUtils.horizontalBlockSize * 4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  image,
                  width: width,
                  color: AppColor.white,
                ),
                AppText(
                  text,
                  color: AppColor.white,
                  fontSize: SizeUtils.fSize_17(),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColor.white,
                  size: SizeUtils.horizontalBlockSize * 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
