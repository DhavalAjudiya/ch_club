import 'package:ch_hub/Ads_helper/ads/banner_ads_widget.dart';

import 'package:ch_hub/res/app_colors.dart';
import 'package:ch_hub/res/strings_utils.dart';
import 'package:ch_hub/utils/navigation_utils/navigation.dart';
import 'package:ch_hub/utils/navigation_utils/routes.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:ch_hub/widget/app_text.dart';
import 'package:flutter/material.dart';

class CreditCardLoanPage extends StatelessWidget {
  const CreditCardLoanPage({Key? key}) : super(key: key);

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
                    AppString.creditDetail,
                    color: AppColor.white,
                    fontSize: SizeUtils.fSize_24(),
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: SizeUtils.verticalBlockSize * 10,
              ),
              loanTypeContainer(
                id: 1,
                text: AppString.creditCard11,
              ),
              loanTypeContainer(
                id: 2,
                text: AppString.creditCard12,
              ),
              loanTypeContainer(
                id: 3,
                text: AppString.creditCard13,
              ),
              loanTypeContainer(
                id: 4,
                text: AppString.creditCard14,
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

  loanTypeContainer({
    String text = "",
    int? id,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 2),
      child: GestureDetector(
        onTap: () {
          Navigation.pushNamed(Routes.creditCardDetails, arg: {"id": id});
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
