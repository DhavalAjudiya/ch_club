import 'package:ch_hub/res/app_colors.dart';
import 'package:ch_hub/res/strings_utils.dart';
import 'package:ch_hub/utils/navigation_utils/navigation.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:ch_hub/widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                SizedBox(
                  height: SizeUtils.verticalBlockSize * 10,
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
                                                                .instanstLoan
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
