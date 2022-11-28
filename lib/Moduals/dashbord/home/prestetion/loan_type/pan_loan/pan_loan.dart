import 'package:ch_hub/res/app_colors.dart';
import 'package:ch_hub/res/strings_utils.dart';
import 'package:ch_hub/utils/navigation_utils/navigation.dart';
import 'package:ch_hub/utils/navigation_utils/routes.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:ch_hub/widget/app_text.dart';
import 'package:flutter/material.dart';

class PanLoanPage extends StatelessWidget {
  const PanLoanPage({Key? key}) : super(key: key);

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
                      AppString.panLoanDetail,
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
                  text: AppString.panLoan11,
                ),
                loanTypeContainer(
                  id: 2,
                  text: AppString.panLoan12,
                ),
                loanTypeContainer(
                  id: 3,
                  text: AppString.panLoan13,
                ),
                loanTypeContainer(
                  id: 4,
                  text: AppString.panLoan14,
                ),
                loanTypeContainer(
                  id: 5,
                  text: AppString.panLoan15,
                ),
                loanTypeContainer(
                  id: 6,
                  text: AppString.panLoan16,
                ),
                loanTypeContainer(
                  id: 7,
                  text: AppString.panLoan17,
                ),
                loanTypeContainer(
                  id: 8,
                  text: AppString.panLoan18,
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
    int? id,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 2),
      child: GestureDetector(
        onTap: () {
          Navigation.pushNamed(Routes.panLoanDetails, arg: {"id": id});
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
