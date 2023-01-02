import 'package:ch_hub/Moduals/dashbord/home/prestetion/cash_counter/cashController.dart';
import 'package:ch_hub/helper/toast_helper.dart';
import 'package:ch_hub/res/app_colors.dart';
import 'package:ch_hub/res/assets_path.dart';
import 'package:ch_hub/res/strings_utils.dart';
import 'package:ch_hub/utils/navigation_utils/navigation.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:ch_hub/widget/app_text.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';

class CashCounter extends StatelessWidget {
  CashCounter({Key? key}) : super(key: key);
  final CashController cashController = Get.put(CashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeUtils.horizontalBlockSize * 3.5,
            vertical: SizeUtils.horizontalBlockSize * 3,
          ),
          child: SingleChildScrollView(
            child: Obx(
              () => Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: SizeUtils.horizontalBlockSize * 6),
                    child: Row(
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
                          AppString.cash,
                          color: AppColor.white,
                          fontSize: SizeUtils.fSize_24(),
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  _cashCounter(
                    image: AssetsPath.ic2000,
                    addOnTap: () {
                      cashController.ic2000++;
                      cashController.i2000 + 2000;
                      cashController.total + 2000;
                    },
                    removeOnTap: () {
                      if (cashController.ic2000 > 0) {
                        cashController.ic2000--;
                        cashController.i2000 - 2000;
                        cashController.total - 2000;
                      }
                    },
                    text: "${cashController.ic2000}",
                    subtext: "${cashController.i2000}",
                  ),
                  _cashCounter(
                    image: AssetsPath.ic500,
                    addOnTap: () {
                      cashController.ic500++;
                      cashController.i500 + 500;
                      cashController.total + 500;
                    },
                    removeOnTap: () {
                      if (cashController.ic500 > 0) {
                        cashController.ic500--;
                        cashController.i500 - 500;
                        cashController.total - 500;
                      }
                    },
                    text: "${cashController.ic500}",
                    subtext: "${cashController.i500}",
                  ),
                  _cashCounter(
                    image: AssetsPath.ic200,
                    addOnTap: () {
                      cashController.ic200++;
                      cashController.i200 + 200;
                      cashController.total + 200;
                    },
                    removeOnTap: () {
                      if (cashController.ic200 > 0) {
                        cashController.ic200--;
                        cashController.i200 - 200;
                        cashController.total - 200;
                      }
                    },
                    text: "${cashController.ic200}",
                    subtext: "${cashController.i200}",
                  ),
                  _cashCounter(
                    image: AssetsPath.ic100,
                    addOnTap: () {
                      cashController.ic100++;
                      cashController.i100 + 100;
                      cashController.total + 100;
                    },
                    removeOnTap: () {
                      if (cashController.ic100 > 0) {
                        cashController.ic100--;
                        cashController.i100 - 100;
                        cashController.total - 100;
                      }
                    },
                    text: "${cashController.ic100}",
                    subtext: "${cashController.i100}",
                  ),
                  _cashCounter(
                    image: AssetsPath.ic50,
                    addOnTap: () {
                      cashController.ic50++;
                      cashController.i50 + 50;
                      cashController.total + 50;
                    },
                    removeOnTap: () {
                      if (cashController.ic50 > 0) {
                        cashController.ic50--;
                        cashController.i50 - 50;
                        cashController.total - 50;
                      }
                    },
                    text: "${cashController.ic50}",
                    subtext: "${cashController.i50}",
                  ),
                  _cashCounter(
                    image: AssetsPath.ic20,
                    addOnTap: () {
                      cashController.ic20++;
                      cashController.i20 + 20;
                      cashController.total + 20;
                    },
                    removeOnTap: () {
                      if (cashController.ic20 > 0) {
                        cashController.ic20--;
                        cashController.i20 - 20;
                        cashController.total - 20;
                      }
                    },
                    text: "${cashController.ic20}",
                    subtext: "${cashController.i20}",
                  ),
                  _cashCounter(
                    image: AssetsPath.ic10,
                    addOnTap: () {
                      cashController.ic10++;
                      cashController.i10 + 10;
                      cashController.total + 10;
                    },
                    removeOnTap: () {
                      if (cashController.ic10 > 0) {
                        cashController.ic10--;
                        cashController.i10 - 10;
                        cashController.total - 10;
                      }
                    },
                    text: "${cashController.ic10}",
                    subtext: "${cashController.i10}",
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: SizeUtils.horizontalBlockSize * 5,
                    ),
                    child: Row(
                      children: [
                        AppText(
                          "Total : ${cashController.total.value}",
                          fontWeight: FontWeight.w600,
                          color: AppColor.white,
                          fontSize: SizeUtils.fSize_20(),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: SizeUtils.verticalBlockSize * 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _copyandshare(
                          text: "Copy",
                          onTap: () {
                            copyAmount("${cashController.total.value}");
                          },
                        ),
                        _copyandshare(
                          text: "Share",
                          onTap: () {
                            shareNoteLink();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _cashCounter({
    String image = "",
    String text = "",
    String subtext = "",
    GestureTapCallback? removeOnTap,
    GestureTapCallback? addOnTap,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 4),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: SizeUtils.horizontalBlockSize * 3,
              horizontal: SizeUtils.horizontalBlockSize * 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                image,
                width: SizeUtils.horizontalBlockSize * 18,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColor.eps2,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeUtils.horizontalBlockSize * 3,
                      vertical: SizeUtils.horizontalBlockSize * 2),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: removeOnTap,
                        child: CircleAvatar(
                          radius: SizeUtils.horizontalBlockSize * 5,
                          backgroundColor: AppColor.eps,
                          child: const Icon(
                            Icons.remove,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: SizeUtils.horizontalBlockSize * 2,
                      ),
                      AppText(
                        text,
                        fontWeight: FontWeight.w500,
                        fontSize: SizeUtils.fSize_18(),
                      ),
                      SizedBox(
                        width: SizeUtils.horizontalBlockSize * 2,
                      ),
                      GestureDetector(
                        onTap: addOnTap,
                        child: CircleAvatar(
                          radius: SizeUtils.horizontalBlockSize * 5,
                          backgroundColor: AppColor.eps,
                          child: const Icon(
                            Icons.add,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    AssetsPath.ruppy,
                    width: SizeUtils.horizontalBlockSize * 2,
                  ),
                  AppText(
                    subtext,
                    fontWeight: FontWeight.w500,
                    fontSize: SizeUtils.fSize_18(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _copyandshare({
    String text = "",
    GestureTapCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.eps.withOpacity(0.7),
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: SizeUtils.horizontalBlockSize * 3,
            horizontal: SizeUtils.horizontalBlockSize * 8,
          ),
          child: AppText(
            text,
            fontWeight: FontWeight.w600,
            fontSize: SizeUtils.fSize_20(),
            color: AppColor.white,
          ),
        ),
      ),
    );
  }

  Future<void> shareNoteLink() async {
    try {
      await FlutterShare.share(
        title: "Instant Loan Guide Cash Counter",
        text: "${cashController.total.value}",
        linkUrl: "",
        chooserTitle: '',
      );
    } catch (e) {}
  }

  Future<void> copyAmount(String text) async {
    FlutterClipboard.copy(text).then(
      (val) => AppToast.toastMessage("Copy Successfully"),
    );
  }
}
