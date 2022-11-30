import 'package:ch_hub/Ads_helper/ads_utils.dart';
import 'package:ch_hub/Ads_helper/banner_ads_widget.dart';
import 'package:ch_hub/res/app_colors.dart';
import 'package:ch_hub/res/assets_path.dart';
import 'package:ch_hub/res/strings_utils.dart';
import 'package:ch_hub/utils/navigation_utils/navigation.dart';
import 'package:ch_hub/utils/navigation_utils/routes.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:ch_hub/widget/app_text.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(AssetsPath.spalsh))),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: SizeUtils.verticalBlockSize * 8,
                ),
                Image.asset(
                  AssetsPath.startMain,
                  width: SizeUtils.horizontalBlockSize * 60,
                ),
                AppText(
                  AppString.ch,
                  fontWeight: FontWeight.w700,
                  color: AppColor.white,
                  fontSize: SizeUtils.fSize_32(),
                ),
                SizedBox(
                  height: SizeUtils.horizontalBlockSize * 3,
                ),
                AppText(
                  AppString.subCh,
                  textAlign: TextAlign.center,
                  color: AppColor.white,
                  fontSize: SizeUtils.fSize_16(),
                ),
                SizedBox(
                  height: SizeUtils.verticalBlockSize * 2,
                ),
                BannerAds(),
                SizedBox(
                  height: SizeUtils.verticalBlockSize * 2,
                ),
                GestureDetector(
                  onTap: () {
                    AdsUtils.showInterstitialAds();

                    Navigation.replace(Routes.homePage);
                  },
                  child: Container(
                    decoration: BoxDecoration(color: AppColor.blueContainer, borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: SizeUtils.horizontalBlockSize * 15,
                        vertical: SizeUtils.verticalBlockSize * 1.5,
                      ),
                      child: AppText(
                        "START",
                        color: AppColor.white,
                        fontSize: SizeUtils.fSize_16(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
