import 'dart:async';

import 'package:ch_hub/res/app_colors.dart';
import 'package:ch_hub/res/assets_path.dart';
import 'package:ch_hub/res/strings_utils.dart';
import 'package:ch_hub/utils/navigation_utils/navigation.dart';
import 'package:ch_hub/utils/navigation_utils/routes.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:ch_hub/widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    startTimeOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 8),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: SizeUtils.verticalBlockSize * 30,
                ),
                Image.asset(
                  AssetsPath.main,
                  width: SizeUtils.horizontalBlockSize * 35,
                ),
                SizedBox(
                  height: SizeUtils.horizontalBlockSize * 5,
                ),
                AppText(
                  AppString.ch,
                  fontWeight: FontWeight.bold,
                  color: AppColor.white,
                  fontSize: SizeUtils.fSize_35(),
                ),
                Spacer(),
                JumpingDotsProgressIndicator(
                  fontSize: SizeUtils.fSize_55(),
                  numberOfDots: 5,
                  color: AppColor.bankinfo2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void startTimeOut() {
    Timer(
      const Duration(seconds: 5),
      () {
        Navigation.pushNamed(Routes.startPage);
      },
    );
  }
}
