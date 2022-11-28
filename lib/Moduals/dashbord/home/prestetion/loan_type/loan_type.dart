import 'package:ch_hub/res/app_colors.dart';
import 'package:ch_hub/res/assets_path.dart';
import 'package:ch_hub/res/strings_utils.dart';
import 'package:ch_hub/utils/navigation_utils/navigation.dart';
import 'package:ch_hub/utils/navigation_utils/routes.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:ch_hub/widget/app_text.dart';
import 'package:flutter/material.dart';

class LoanTypePage extends StatelessWidget {
  const LoanTypePage({Key? key}) : super(key: key);

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
                      AppString.loanType,
                      color: AppColor.white,
                      fontSize: SizeUtils.fSize_24(),
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeUtils.verticalBlockSize * 10,
                ),
                typeContainer(
                  onTap: () {
                    Navigation.pushNamed(Routes.personalLoan);
                  },
                  text: AppString.personalT,
                  image: AssetsPath.personal,
                  id: 1,
                ),
                typeContainer(
                  onTap: () {
                    Navigation.pushNamed(Routes.homeLoan);
                  },
                  text: AppString.home,
                  image: AssetsPath.personal,
                  id: 2,
                ),
                typeContainer(
                  onTap: () {
                    Navigation.pushNamed(Routes.businessLoan);
                  },
                  text: AppString.business,
                  image: AssetsPath.personal,
                  id: 3,
                ),
                typeContainer(
                  onTap: () {
                    Navigation.pushNamed(Routes.educationLoan);
                  },
                  text: AppString.education,
                  image: AssetsPath.personal,
                  id: 4,
                ),
                typeContainer(
                  onTap: () {
                    Navigation.pushNamed(Routes.carLoan);
                  },
                  text: AppString.car,
                  image: AssetsPath.personal,
                  id: 5,
                ),
                typeContainer(
                  onTap: () {
                    Navigation.pushNamed(Routes.goldLoan);
                  },
                  text: AppString.gold,
                  image: AssetsPath.personal,
                  id: 6,
                ),
                typeContainer(
                  onTap: () {
                    Navigation.pushNamed(Routes.aadharLoanPage);
                  },
                  text: AppString.aadhar,
                  image: AssetsPath.personal,
                  id: 7,
                ),
                typeContainer(
                  onTap: () {
                    Navigation.pushNamed(Routes.panLoanPage);
                  },
                  text: AppString.pan,
                  image: AssetsPath.personal,
                  id: 8,
                ),
                typeContainer(
                  onTap: () {
                    Navigation.pushNamed(Routes.creditCardPage);
                  },
                  text: AppString.credit,
                  image: AssetsPath.personal,
                  id: 9,
                ),
                typeContainer(
                  onTap: () {
                    Navigation.pushNamed(Routes.bikePage);
                  },
                  text: AppString.bike,
                  image: AssetsPath.personal,
                  id: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  typeContainer({
    String image = "",
    String text = "",
    double? width,
    int? id,
    final GestureTapCallback? onTap,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 3),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColor.backgroundColor1,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeUtils.horizontalBlockSize * 6,
              vertical: SizeUtils.horizontalBlockSize * 2,
            ),
            child: Row(
              children: [
                Image.asset(
                  image,
                  width: SizeUtils.horizontalBlockSize * 12,
                  // color: AppColor.white,
                ),
                SizedBox(
                  width: SizeUtils.horizontalBlockSize * 8,
                ),
                AppText(
                  text,
                  color: AppColor.white,
                  fontSize: SizeUtils.fSize_17(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
