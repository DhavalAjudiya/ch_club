import 'package:bot_toast/bot_toast.dart';
import 'package:ch_hub/Ads_helper/banner_ads_widget.dart';
import 'package:ch_hub/helper/app_snackbar.dart';
import 'package:ch_hub/helper/toast_helper.dart';
import 'package:ch_hub/res/app_colors.dart';
import 'package:ch_hub/res/strings_utils.dart';
import 'package:ch_hub/utils/navigation_utils/navigation.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:ch_hub/widget/app_text.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class EPSServiceDetails extends StatelessWidget {
  EPSServiceDetails({Key? key}) : super(key: key);
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
                      AppString.eps,
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
                AppText(
                  id["id"] == 1
                      ? AppString.establishment
                      : id["id"] == 2
                          ? AppString.key
                          : id["id"] == 3
                              ? AppString.umang
                              : id["id"] == 4
                                  ? AppString.ecr
                                  : id["id"] == 5
                                      ? AppString.online
                                      : id["id"] == 6
                                          ? AppString.e
                                          : id["id"] == 7
                                              ? AppString.sharam
                                              : id["id"] == 8
                                                  ? AppString.personal
                                                  : id["id"] == 9
                                                      ? AppString.instanstLoan
                                                      : AppString.eKyc,
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
                        id["id"] == 1
                            ? AppString.establishmentRegistration
                            : id["id"] == 2
                                ? AppString.kycUpdation
                                : id["id"] == 3
                                    ? AppString.umangUmang
                                    : id["id"] == 4
                                        ? AppString.ecrReturns
                                        : id["id"] == 5
                                            ? AppString.onlineClaims
                                            : id["id"] == 6
                                                ? AppString.ePassbookr
                                                : id["id"] == 7
                                                    ? AppString.sharamsuvidha
                                                    : id["id"] == 8
                                                        ? AppString
                                                            .personalPortal
                                                        : id["id"] == 9
                                                            ? AppString
                                                                .internationalWorkers
                                                            : AppString
                                                                .eKycPortal,
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
                                ? AppString.establishmentLink
                                : id["id"] == 2
                                    ? AppString.kycLink
                                    : id["id"] == 3
                                        ? AppString.umangLink
                                        : id["id"] == 4
                                            ? AppString.ecrLink
                                            : id["id"] == 5
                                                ? AppString.onlineLink
                                                : id["id"] == 6
                                                    ? AppString.eLink
                                                    : id["id"] == 7
                                                        ? AppString.sharamLink
                                                        : id["id"] == 8
                                                            ? AppString
                                                                .personalLink
                                                            : id["id"] == 9
                                                                ? AppString
                                                                    .internationalLink
                                                                : AppString
                                                                    .eKycLink,
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

  Future<void> _launchUrl(String url) async {
    final Uri urls = Uri.parse(url);
    if (!await launchUrl(urls)) {
      throw "Could not launch $urls";
    }
  }

  Future<void> _copyUrl(String url) async {
    FlutterClipboard.copy(url).then(
      (val) => AppToast.toastMessage("Copy Successfully"),
    );
  }

  Future<void>? urlLauncher({int? index}) {
    switch (index) {
      case 1:
        return _copyUrl(AppString.establishmentLink);

      case 2:
        return _copyUrl(AppString.kycLink);

      case 3:
        return _copyUrl(AppString.umangLink);

      case 4:
        return _copyUrl(AppString.ecrLink);
      case 5:
        return _copyUrl(AppString.onlineLink);
      case 6:
        return _copyUrl(AppString.eLink);
      case 7:
        return _copyUrl(AppString.sharamLink);
      case 8:
        return _copyUrl(AppString.personalLink);
      case 9:
        return _copyUrl(AppString.internationalLink);
      case 10:
        return _copyUrl(AppString.eKycLink);
    }
  }
}
