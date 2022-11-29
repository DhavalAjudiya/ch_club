import 'package:bot_toast/bot_toast.dart';
import 'package:ch_hub/helper/net_conectivity.dart';
import 'package:ch_hub/utils/app_binding.dart';
import 'package:ch_hub/utils/my_behavior.dart';
import 'package:ch_hub/utils/navigation_utils/routes.dart';
import 'package:ch_hub/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class CHCLUB extends StatelessWidget {
  const CHCLUB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ));
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      theme: ThemeData(
        brightness: Brightness.light,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        disabledColor: Colors.transparent,
        // fontFamily: AssetsPath.robotoFonts,
      ),
      initialRoute: Routes.splashPage,
      getPages: Routes.routes,
      builder: (context, child) {
        SizeUtils().init(context);
        return Scaffold(
          // backgroundColor: AppColors.white,
          resizeToAvoidBottomInset: false,
          body: ScrollConfiguration(
            behavior: MyBehavior(),
            child: ConnectivityWidget(
              builder: (_, __) => BotToastInit()(_, child),
            ),
          ),
        );
      },
    );
  }
}
