import 'package:ch_hub/Ads_helper/banner_ads_widget.dart';
import 'package:ch_hub/res/app_colors.dart';
import 'package:ch_hub/res/assets_path.dart';
import 'package:ch_hub/res/strings_utils.dart';
import 'package:ch_hub/utils/navigation_utils/navigation.dart';
import 'package:ch_hub/utils/navigation_utils/routes.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:ch_hub/widget/app_text.dart';
import 'package:flutter/material.dart';

class InstantLoanPage extends StatelessWidget {
  const InstantLoanPage({Key? key}) : super(key: key);

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
                      AppString.instanstLoan,
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
                typeContainer(
                  text: "Active UNA",
                  image: AssetsPath.una,
                  id: 1,
                ),
                typeContainer(
                  text: "Balance Online",
                  image: AssetsPath.balanceOnline,
                  id: 2,
                ),
                typeContainer(
                  text: "Pensioner",
                  image: AssetsPath.pensioner,
                  id: 3,
                ),
                typeContainer(
                  text: "TRRN Status",
                  image: AssetsPath.trrnS,
                  id: 4,
                ),
                typeContainer(
                  text: "News",
                  image: AssetsPath.news,
                  id: 5,
                ),
                typeContainer(
                  text: "Helpline",
                  image: AssetsPath.helpline,
                  id: 6,
                ),
                typeContainer(
                  text: "Balance (SMS)",
                  image: AssetsPath.balance,
                  id: 7,
                ),
                typeContainer(
                  text: "FAQ",
                  image: AssetsPath.faq,
                  id: 8,
                ),
                typeContainer(
                  text: "EPF Online",
                  image: AssetsPath.epfOnline,
                  id: 9,
                ),
                typeContainer(
                  text: "Locate Office",
                  image: AssetsPath.locateOffice,
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
        onTap: () {
          Navigation.pushNamed(
            Routes.instantLoanDetails,
            arg: {"id": id},
          );
        },
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
                  width: SizeUtils.horizontalBlockSize * 15,
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
