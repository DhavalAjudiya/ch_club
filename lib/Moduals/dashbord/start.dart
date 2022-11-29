import 'package:ch_hub/res/app_colors.dart';
import 'package:ch_hub/res/strings_utils.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:ch_hub/widget/app_text.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            AppText(
              AppString.ch,
              fontWeight: FontWeight.w700,
              color: AppColor.white,
              fontSize: SizeUtils.fSize_32(),
            ),
            SizedBox(
              height: SizeUtils.horizontalBlockSize * 3,
            ),
            AppText(
              AppString.subCh,
              fontWeight: FontWeight.w700,
              color: AppColor.white,
              fontSize: SizeUtils.fSize_32(),
            ),
          ],
        ),
      ),
    );
  }
}
