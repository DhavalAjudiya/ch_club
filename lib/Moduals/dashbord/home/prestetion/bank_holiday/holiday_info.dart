import 'package:ch_hub/Ads_helper/ads/banner_ads_widget.dart';

import 'package:ch_hub/res/app_colors.dart';
import 'package:ch_hub/res/strings_utils.dart';
import 'package:ch_hub/utils/navigation_utils/navigation.dart';
import 'package:ch_hub/utils/navigation_utils/routes.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:ch_hub/widget/app_text.dart';
import 'package:flutter/material.dart';

class HolidayInfoPage extends StatelessWidget {
  const HolidayInfoPage({Key? key}) : super(key: key);

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
                      AppString.holiday,
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
                loanTypeContainer(
                    text: AppString.Jan02, subtext: AppString.Jan_02),
                loanTypeContainer(
                    text: AppString.Jan12, subtext: AppString.Jan_12),
                loanTypeContainer(
                    text: AppString.Jan23, subtext: AppString.Jan_23),
                loanTypeContainer(
                    text: AppString.Jan23_1, subtext: AppString.Jan_23_1),
                loanTypeContainer(
                    text: AppString.Jan26, subtext: AppString.Jan_26),
                loanTypeContainer(
                    text: AppString.feb13, subtext: AppString.feb_13),
                loanTypeContainer(
                    text: AppString.feb27, subtext: AppString.feb_27),
                loanTypeContainer(
                    text: AppString.march13, subtext: AppString.march_13),
                loanTypeContainer(
                    text: AppString.march27, subtext: AppString.march_27),
                loanTypeContainer(
                    text: AppString.april01, subtext: AppString.april_01),
                loanTypeContainer(
                    text: AppString.april02, subtext: AppString.april_02),
                loanTypeContainer(
                    text: AppString.april10, subtext: AppString.april_10),
                loanTypeContainer(
                    text: AppString.april14, subtext: AppString.april_14),
                loanTypeContainer(
                    text: AppString.april15, subtext: AppString.april_15),
                loanTypeContainer(
                    text: AppString.april24, subtext: AppString.april_24),
                loanTypeContainer(
                    text: AppString.may01, subtext: AppString.may_01),
                loanTypeContainer(
                    text: AppString.may08, subtext: AppString.may_08),
                loanTypeContainer(
                    text: AppString.may14, subtext: AppString.may_14),
                loanTypeContainer(
                    text: AppString.may22, subtext: AppString.may_22),
                loanTypeContainer(
                    text: AppString.may26, subtext: AppString.may_26),
                loanTypeContainer(
                    text: AppString.june12, subtext: AppString.june_12),
                loanTypeContainer(
                    text: AppString.june26, subtext: AppString.june_26),
                loanTypeContainer(
                    text: AppString.july21, subtext: AppString.july_21),
                loanTypeContainer(
                    text: AppString.july24, subtext: AppString.july_24),
                loanTypeContainer(
                    text: AppString.august14, subtext: AppString.august_14),
                loanTypeContainer(
                    text: AppString.august19, subtext: AppString.august_19),
                loanTypeContainer(
                    text: AppString.august28, subtext: AppString.august_28),
                loanTypeContainer(
                    text: AppString.september11,
                    subtext: AppString.september_11),
                loanTypeContainer(
                    text: AppString.september25,
                    subtext: AppString.september_25),
                loanTypeContainer(
                    text: AppString.october02, subtext: AppString.october_02),
                loanTypeContainer(
                    text: AppString.october06, subtext: AppString.october_06),
                loanTypeContainer(
                    text: AppString.october09, subtext: AppString.october_09),
                loanTypeContainer(
                    text: AppString.october12, subtext: AppString.october_12),
                loanTypeContainer(
                    text: AppString.october13, subtext: AppString.october_13),
                loanTypeContainer(
                    text: AppString.october14, subtext: AppString.october_14),
                loanTypeContainer(
                    text: AppString.october15, subtext: AppString.october_15),
                loanTypeContainer(
                    text: AppString.october20, subtext: AppString.october_20),
                loanTypeContainer(
                    text: AppString.october23, subtext: AppString.october_23),
                loanTypeContainer(
                    text: AppString.november04, subtext: AppString.november_04),
                loanTypeContainer(
                    text: AppString.november13, subtext: AppString.november_13),
                loanTypeContainer(
                    text: AppString.november19, subtext: AppString.november_19),
                loanTypeContainer(
                    text: AppString.november27, subtext: AppString.november_27),
                loanTypeContainer(
                    text: AppString.december11, subtext: AppString.december_11),
                loanTypeContainer(
                    text: AppString.december25, subtext: AppString.december_25),
                loanTypeContainer(
                    text: AppString.december25, subtext: AppString.december_25),
              ],
            ),
          ),
        ),
      ),
    );
  }

  loanTypeContainer({
    String text = "",
    String subtext = "",
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 2),
      child: GestureDetector(
        onTap: () {
          Navigation.pushNamed(Routes.epsServiceDetailes);
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xff21212d),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: SizeUtils.horizontalBlockSize * 5,
            ),
            child: Column(
              children: [
                AppText(
                  text,
                  color: AppColor.blueContainer,
                  fontSize: SizeUtils.fSize_18(),
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: SizeUtils.horizontalBlockSize * 1,
                ),
                AppText(
                  subtext,
                  color: Colors.white,
                  fontSize: SizeUtils.fSize_18(),
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
