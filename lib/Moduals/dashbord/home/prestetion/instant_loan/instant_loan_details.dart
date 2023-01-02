import 'package:ch_hub/Ads_helper/ads/banner_ads_widget.dart';

import 'package:ch_hub/helper/toast_helper.dart';
import 'package:ch_hub/res/app_colors.dart';
import 'package:ch_hub/res/strings_utils.dart';
import 'package:ch_hub/utils/navigation_utils/navigation.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:ch_hub/widget/app_text.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InstantLoanDetails extends StatelessWidget {
  InstantLoanDetails({Key? key}) : super(key: key);
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
                    SizedBox(
                      width: SizeUtils.horizontalBlockSize * 2,
                    ),
                    AppText(
                      AppString.instantLoand,
                      color: AppColor.white,
                      fontSize: SizeUtils.fSize_24(),
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
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
                        id["id"] == 1
                            ? AppString.activeUna
                            : id["id"] == 2
                                ? AppString.balanceOnline
                                : id["id"] == 3
                                    ? AppString.pensioners
                                    : id["id"] == 4
                                        ? AppString.TEEN
                                        : id["id"] == 5
                                            ? AppString.news
                                            : id["id"] == 6
                                                ? AppString.helpline
                                                : id["id"] == 7
                                                    ? AppString.balance_sms
                                                    : id["id"] == 8
                                                        ? AppString.FAQ
                                                        : id["id"] == 9
                                                            ? AppString
                                                                .epfOnline
                                                            : AppString
                                                                .locateOffice,
                        fontSize: SizeUtils.fSize_12(),
                        maxLines: 80,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeUtils.horizontalBlockSize * 5,
                    bottom: SizeUtils.horizontalBlockSize * 5,
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.backgroundColor1,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: SizeUtils.horizontalBlockSize * 3,
                      ),
                      child: Column(
                        children: [
                          AppText(
                            id["id"] == 1
                                ? AppString.activeUnaLink
                                : id["id"] == 2
                                    ? AppString.balanceOnlineLink
                                    : id["id"] == 3
                                        ? AppString.pensionersLink
                                        : id["id"] == 4
                                            ? AppString.TEENLinkLink
                                            : id["id"] == 5
                                                ? AppString.newsLink
                                                : id["id"] == 6
                                                    ? AppString.helplineLink
                                                    : id["id"] == 7
                                                        ? AppString
                                                            .balance_smsLink
                                                        : id["id"] == 8
                                                            ? AppString.FAQLink
                                                            : id["id"] == 9
                                                                ? AppString
                                                                    .epfOnlineLink
                                                                : AppString
                                                                    .locateOfficeLink,
                            fontSize: SizeUtils.fSize_14(),
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: SizeUtils.horizontalBlockSize * 3,
                          ),
                          GestureDetector(
                            onTap: () {
                              urlLauncher(index: id["id"]);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColor.blueContainer,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      SizeUtils.horizontalBlockSize * 12,
                                  vertical: SizeUtils.horizontalBlockSize * 3,
                                ),
                                child: AppText(
                                  "Copy Link",
                                  fontSize: SizeUtils.fSize_18(),
                                  maxLines: 80,
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
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

  Future<void> _copyUrl(String url) async {
    FlutterClipboard.copy(url).then(
      (val) => AppToast.toastMessage("Copy Successfully"),
    );
  }

  Future<void>? urlLauncher({int? index}) {
    switch (index) {
      case 1:
        return _copyUrl(AppString.activeUnaLink);

      case 2:
        return _copyUrl(AppString.balanceOnlineLink);

      case 3:
        return _copyUrl(AppString.pensionersLink);

      case 4:
        return _copyUrl(AppString.TEENLinkLink);
      case 5:
        return _copyUrl(AppString.newsLink);
      case 6:
        return _copyUrl(AppString.helplineLink);
      case 7:
        return _copyUrl(AppString.balance_smsLink);
      case 8:
        return _copyUrl(AppString.FAQLink);
      case 9:
        return _copyUrl(AppString.epfOnlineLink);
      case 10:
        return _copyUrl(AppString.locateOfficeLink);
    }
  }
}
