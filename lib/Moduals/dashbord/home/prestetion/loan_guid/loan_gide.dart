import 'package:ch_hub/res/app_colors.dart';
import 'package:ch_hub/res/strings_utils.dart';
import 'package:ch_hub/utils/navigation_utils/navigation.dart';
import 'package:ch_hub/utils/navigation_utils/routes.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:ch_hub/widget/app_text.dart';
import 'package:flutter/material.dart';

class LoanGuidePage extends StatelessWidget {
  const LoanGuidePage({Key? key}) : super(key: key);

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
                      AppString.loanGuid,
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
                  text: AppString.whatIs,
                ),
                loanTypeContainer(
                  id: 2,
                  text: AppString.forWhat,
                ),
                loanTypeContainer(
                  id: 3,
                  text: AppString.which,
                ),
                loanTypeContainer(
                  id: 4,
                  text: AppString.how,
                ),
                loanTypeContainer(
                  id: 5,
                  text: AppString.hoeDo,
                ),
                loanTypeContainer(
                  id: 6,
                  text: AppString.whatAre,
                ),
                loanTypeContainer(
                  id: 7,
                  text: AppString.whatAre,
                ),
                loanTypeContainer(
                  id: 8,
                  text: AppString.key,
                ),
                loanTypeContainer(
                  id: 9,
                  text: AppString.difference,
                ),
                loanTypeContainer(
                  id: 10,
                  text: AppString.loan,
                ),
                loanTypeContainer(
                  id: 11,
                  text: AppString.credit,
                ),
                loanTypeContainer(
                  id: 12,
                  text: AppString.howIS,
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
          Navigation.pushNamed(Routes.loanGuidDetails, arg: {"id": id});
          print("id----------$id");
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
