import 'package:ch_hub/Ads_helper/ads/banner_ads_widget.dart';

import 'package:ch_hub/res/app_colors.dart';
import 'package:ch_hub/res/strings_utils.dart';
import 'package:ch_hub/utils/navigation_utils/navigation.dart';
import 'package:ch_hub/utils/navigation_utils/routes.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:ch_hub/widget/app_text.dart';
import 'package:flutter/material.dart';

class BankHolidayPage extends StatelessWidget {
  const BankHolidayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("BankHolidayPage----BankHolidayPage");
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
                      AppString.selectState,
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
                  text: AppString.Andaman,
                ),
                loanTypeContainer(
                  text: AppString.Bihar,
                ),
                loanTypeContainer(
                  text: AppString.dadra,
                ),
                loanTypeContainer(
                  text: AppString.Gujarat,
                ),
                loanTypeContainer(
                  text: AppString.Andhra,
                ),
                loanTypeContainer(
                  text: AppString.Chandigarh,
                ),
                loanTypeContainer(
                  text: AppString.Pondicherry,
                ),
                loanTypeContainer(
                  text: AppString.West,
                ),
                loanTypeContainer(
                  text: AppString.Tripura,
                ),
                loanTypeContainer(
                  text: AppString.Himachal,
                ),
                loanTypeContainer(
                  text: AppString.Rajasthan,
                ),
                loanTypeContainer(
                  text: AppString.Assam,
                ),
                loanTypeContainer(
                  text: AppString.New,
                ),
                loanTypeContainer(
                  text: AppString.Punjab,
                ),
                loanTypeContainer(
                  text: AppString.Jharkhand,
                ),
                loanTypeContainer(
                  text: AppString.Uttar,
                ),
                loanTypeContainer(
                  text: AppString.Karnataka,
                ),
                loanTypeContainer(
                  text: AppString.Nagaland,
                ),
                loanTypeContainer(
                  text: AppString.Uttarakhand,
                ),
                loanTypeContainer(
                  text: AppString.Daman,
                ),
                loanTypeContainer(
                  text: AppString.Maharashtra,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  loanTypeContainer({
    String text = "",
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 2),
      child: GestureDetector(
        onTap: () {
          Navigation.pushNamed(Routes.holidayInfoPage);
        },
        child: Container(
          height: SizeUtils.verticalBlockSize * 9,
          decoration: BoxDecoration(
            color: const Color(0xff21212d),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeUtils.horizontalBlockSize * 4,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: SizeUtils.horizontalBlockSize * 75,
                  child: AppText(
                    text,
                    color: Colors.white,
                    fontSize: SizeUtils.fSize_16(),
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
