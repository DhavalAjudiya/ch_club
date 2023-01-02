import 'package:ch_hub/Ads_helper/ads/banner_ads_widget.dart';

import 'package:ch_hub/res/app_colors.dart';
import 'package:ch_hub/res/strings_utils.dart';
import 'package:ch_hub/utils/navigation_utils/navigation.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:ch_hub/widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BikeLoanDetails extends StatelessWidget {
  BikeLoanDetails({Key? key}) : super(key: key);
  var id;
  @override
  Widget build(BuildContext context) {
    id = Get.arguments;

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeUtils.horizontalBlockSize * 3.5,
            vertical: SizeUtils.horizontalBlockSize * 3,
          ),
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
                  SizedBox(
                    width: SizeUtils.horizontalBlockSize * 2,
                  ),
                  AppText(
                    AppString.loanDetail,
                    color: AppColor.white,
                    fontSize: SizeUtils.fSize_24(),
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: SizeUtils.verticalBlockSize * 10,
              ),
              AppText(
                id["id"] == 1 ? AppString.bike11 : AppString.bike11,
                fontSize: SizeUtils.fSize_18(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: SizeUtils.horizontalBlockSize * 3,
                  bottom: SizeUtils.horizontalBlockSize * 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.backgroundColor1,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: SizeUtils.horizontalBlockSize * 2,
                      horizontal: SizeUtils.horizontalBlockSize * 3,
                    ),
                    child: AppText(
                      id["id"] == 1 ? AppString.bike1 : AppString.bike2,
                      fontSize: SizeUtils.fSize_12(),
                      maxLines: 80,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: SizeUtils.horizontalBlockSize * 5,
                  bottom: SizeUtils.horizontalBlockSize * 7,
                ),
                child: SizedBox(
                  height: SizeUtils.verticalBlockSize * 8,
                  child: BannerAds(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
