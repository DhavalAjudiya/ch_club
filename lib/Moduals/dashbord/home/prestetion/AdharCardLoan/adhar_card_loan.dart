import 'package:ch_hub/Ads_helper/ads/full_banner_ads.dart';
import 'package:ch_hub/res/app_colors.dart';
import 'package:ch_hub/res/assets_path.dart';
import 'package:ch_hub/res/strings_utils.dart';
import 'package:ch_hub/utils/navigation_utils/navigation.dart';
import 'package:ch_hub/utils/navigation_utils/routes.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:ch_hub/widget/app_text.dart';
import 'package:flutter/material.dart';

class AdharCardLoad extends StatelessWidget {
  const AdharCardLoad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: SizeUtils.horizontalBlockSize * 3.5,
            right: SizeUtils.horizontalBlockSize * 3.5,
            top: SizeUtils.horizontalBlockSize * 2,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigation.pop();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: SizeUtils.horizontalBlockSize * 7,
                        color: AppColor.white,
                      ),
                    ),
                    AppText(
                      AppString.adharCARD,
                      color: AppColor.white,
                      fontSize: SizeUtils.fSize_24(),
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeUtils.horizontalBlockSize * 8),
                  child: SizedBox(
                    height: SizeUtils.verticalBlockSize * 25,
                    child: const Center(child: FullBannerAds()),
                  ),
                ),
                // SizedBox(
                //   height: SizeUtils.verticalBlockSize * 35,
                // ),
                GestureDetector(
                  onTap: () {
                    Navigation.pushNamed(Routes.loanGuidePage);
                  },
                  child: Image.asset(
                    AssetsPath.apply,
                    width: SizeUtils.horizontalBlockSize * 90,
                  ),
                ),
                SizedBox(
                  height: SizeUtils.horizontalBlockSize * 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigation.pushNamed(Routes.loanTypePage);
                  },
                  child: Image.asset(
                    AssetsPath.typeofLoan,
                    width: SizeUtils.horizontalBlockSize * 90,
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
