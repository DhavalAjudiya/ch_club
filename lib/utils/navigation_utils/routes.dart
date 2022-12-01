import 'package:ch_hub/Moduals/dashbord/home/prestetion/AdharCardLoan/adhar_card_loan.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/EPS_service/eps.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/EPS_service/eps_details.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/bank_holiday/bank_holiday.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/bank_holiday/holiday_info.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/bank_info/Bank_Info.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/home_page.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/instant_loan/instant_Loan.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/instant_loan/instant_loan_details.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/loan_guid/loan_gide.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/loan_guid/loan_guide_details.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/loan_type/adhar_loan/aadhar_loan.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/loan_type/adhar_loan/adhar_loan_detail.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/loan_type/bike/bike_loan.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/loan_type/bike/bike_loan_details.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/loan_type/bussiness_loan.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/loan_type/car_loan.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/loan_type/credit_card/credit_card.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/loan_type/credit_card/credit_card_details.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/loan_type/education_loan.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/loan_type/gold_loan.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/loan_type/home_loan.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/loan_type/loan_type.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/loan_type/pan_loan/pan_loan.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/loan_type/pan_loan/pan_loan_detailes.dart';
import 'package:ch_hub/Moduals/dashbord/home/prestetion/loan_type/personal_loan.dart';
import 'package:ch_hub/Moduals/dashbord/splashpage.dart';
import 'package:ch_hub/Moduals/dashbord/start.dart';
import 'package:get/get.dart';

mixin Routes {
  static const defaultTransition = Transition.rightToLeft;

  // static const String splash = "/splash";
  static const String homePage = "/homePage";
  static const String loanGuidDetails = "/loanGuidDetails";
  static const String loanGuidePage = "/loanGuidePage";
  static const String epsService = "/epsService";
  static const String epsServiceDetailes = "/epsServiceDetailes";
  static const String loanTypePage = "/loanTypePage";
  static const String personalLoan = "/personalLoan";
  static const String homeLoan = "/homeLoan";
  static const String businessLoan = "/businessLoan";
  static const String educationLoan = "/educationLoan";
  static const String carLoan = "/carLoan";
  static const String goldLoan = "/GoldLoan";
  static const String aadharLoanPage = "/aadharLoanPage";
  static const String aadharLoanDetails = "/aadharLoanDetails";
  static const String panLoanPage = "/panLoanPage";
  static const String panLoanDetails = "/panLoanDetails";
  static const String creditCardPage = "/creditCardPage";
  static const String creditCardDetails = "/creditCardDetails";
  static const String bikePage = "/bikePage";
  static const String bikeLoanDetail = "/bikeLoanDetail";
  static const String bankHolidayPage = "/bankHolidayPage";
  static const String holidayInfoPage = "/holidayInfoPage";
  static const String startPage = "/startPage";
  static const String splashPage = "/splashPage";
  static const String adharCard = "/adharCard";
  static const String instantLoan = "/instantLoan";
  static const String instantLoanDetails = "/instantLoanDetails";
  static const String bankInfoPage = "/bankInfoPage";

  static List<GetPage<dynamic>> routes = [
    GetPage<dynamic>(
      name: splashPage,
      page: () => SplashPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: homePage,
      page: () => HomePage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: loanGuidePage,
      page: () => LoanGuidePage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: loanGuidDetails,
      page: () => LoanGuidDetails(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: epsService,
      page: () => EPSServicePage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: epsServiceDetailes,
      page: () => EPSServiceDetails(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: loanTypePage,
      page: () => LoanTypePage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: personalLoan,
      page: () => PersonalLoanPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: homeLoan,
      page: () => HomeLoanPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: businessLoan,
      page: () => BusinessLoanPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: educationLoan,
      page: () => EducationLoanPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: carLoan,
      page: () => CarLoanPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: goldLoan,
      page: () => GoldLoanPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: aadharLoanPage,
      page: () => AadharLoanPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: aadharLoanDetails,
      page: () => AadharLoanDetails(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: panLoanPage,
      page: () => PanLoanPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: panLoanDetails,
      page: () => PanLoanDetails(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: creditCardPage,
      page: () => CreditCardLoanPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: creditCardDetails,
      page: () => CreditCardLoanDetails(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: bikePage,
      page: () => BikeLoanPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: bikeLoanDetail,
      page: () => BikeLoanDetails(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: bankHolidayPage,
      page: () => BankHolidayPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: holidayInfoPage,
      page: () => HolidayInfoPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: startPage,
      page: () => StartPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: adharCard,
      page: () => AdharCardLoad(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: instantLoan,
      page: () => InstantLoanPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: instantLoanDetails,
      page: () => InstantLoanDetails(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: bankInfoPage,
      page: () => BankInfoPage(),
      transition: defaultTransition,
    ),
  ];
}
