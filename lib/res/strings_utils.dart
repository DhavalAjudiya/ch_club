import 'package:flutter/material.dart';

class AppString {
  AppString._();

  static ValueNotifier<int> bottomIndex = ValueNotifier(0);

  ///Validator
  static const String emailRegExp = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  static const String plzEnterEmail = 'Please enter email';
  static const String enterValidEmail = 'Please enter valid email';
  static const String emptyQuote = '';
  static const String plzEnterPWD = 'Please enter Password';
  static const String pWDRegExp = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  static const String pWDMustBeUpperLower = 'Password must be Uppercase,Lowercase,digit and specialCharacters';

  static const String cashHub = 'Cash Hub';
  static const String ch = 'CH Loan Adviser';
  static const String adharCARD = 'Aadhar Card Loan';
  static const String instantLoan = 'Instant Loan';
  static const String instantLoand = 'Instant Loan Details';
  static const String subCh = 'You can get all the detailed information \nabout how to get a personal loan.';
  static const String loanDetail = 'Loan Details';
  static const String selectState = 'Select State';
  static const String holiday = 'Holiday List';
  static const String adharLoanDetail = 'Aadhar Loan Details';
  static const String creditDetail = 'Credit Card  Details';
  static const String bikeDetail = 'Bike Loan Details';
  static const String panLoanDetail = 'Pan Loan Details';
  static const String adharCardLoan = 'Adhar Card Loan';
  static const String instanstLoan = 'Instant Loan';
  static const String loanGuid = 'Loan Guide';
  static const String eps = 'EPS Service';
  static const String loanType = 'Loan Type';
  static const String bankHoliday = 'Bank Holidays';
  static const String bankInfo = 'Bank Info';
  static const String nearBy = 'Near By';

  static const whatIs = "What is Loan?";
  static const forWhat = "for What purposes can it be used?";
  static const which = "Which Eligibility criteria For Loan?";
  static const how = "How much can one borrow";
  static const from = "From which bank/financial institution Should onr borrow";
  static const hoeDo = "How do banks decide on the maximum loan amount";
  static const whatAre = "What are the common rates For Loan";
  static const key = "Key documents required when applying for a loan";
  static const difference = "Difference between part payment, prepayment and preclosure";
  static const loan = "Loan approval process";
  static const credit = "Credit report and score";
  static const howIS = "How is having a higher credit score beneficial";
  static const whatIsLoan =
      "→ Simply put , it is an unsecured loan taken by individuals from a bank or a non - banking financial company ( NBFC ) to meet their personal needs .  It is provided on the basis of key criteria such as income level, credit and employment history, repayment capacity, etc.  → Unlike a home or a car loan, a personal loan is not secured against any asset.  As it is unsecured and the borrower does not put up collateral like gold or property to avail it , the lender , in case of a default , cannot auction. Simply put , it is an unsecured loan taken by individuals from a bank or a non -  banking financial company ( NBFC ) to meet their personal needs .  → It is provided on the basis of key criteria such as income level, credit and employment history, repayment capacity, etc.  Unlike a home or a car loan, a personal loan is not secured against any asset.  → As it is unsecured and the borrower does not put up collateral like gold or property to avail it , the lender , in case of a default , cannot auction .  Simply put , it is an unsecured loan taken by individuals from a bank or a non - banking financial company ( NBFC ) to meet their personal needs .  → It is provided on the basis of key criteria such as income level, credit and employment history, repayment capacity, etc.  Unlike a home or a car loan, a personal loan is not secured against any asset.  As it is unsecured and the borrower does not put up collateral like gold or property to avail it , the lender , in case of a default , cannot auction , → Simply put , it is an unsecured loan taken by individuals from a bank or a non  - banking financial company ( NBFC ) to meet their personal needs .  It is provided on the basis of key criteria such as income level, credit and employment history, repayment capacity, etc.  Unlike a home or a car loan, a personal loan is not secured against any asset.  → As it is unsecured and the borrower does not put up collateral like gold or property to avail it , the lender , in case of a default , cannot auction .";
  static const forWhatPurposes =
      " Instant Loan Guide fff - It can be used for any personal financial need and the bank will not monitor its use .  a → It can be utilized for renovating your home , marriage - related expenses , family vacation , your child's education , purchasing latest electronic gadgets or home appliances , meeting unexpected medical expenses any other emergencies .  or → Personal loans are also useful when it comes to investing in business, fixing your car, down payment of new house, etc.";
  static const whichEli =
      "Although it varies from bank to bank, the general criteria include your age, occupation, income, ability to repay the loan and place of residence.  To avail of a personal loan, you must have a regular income source, whether you are a salaried individual, self-employed business person or a professional.  An individuals eligibility is also affected by the company he is employed with, his credit history, etc.";
  static const howMuch =
      "→ It usually depends on your income and varies based on whether you are salaried or self - employed .  Usually, the banks restrict the loan amount such that your EMI is not more than 40-50% of your monthly income.  → Any existing loans that are being serviced by the applicant are also considered when calculating the personal loan amount .  > For the self employed , the loan value is determined on the basis of the profit earned as per the most recently acknowledged profit / loss statement , while taking into ac ...";

  static const forewich =
      "→ It is good to compare the offers of various banks before you settle on one .  Some key factors to consider when deciding on a loan provider include interest rates, loan tenure, processing fees, etc.";
  static const howDoBanks =
      "Although the loan sanctioning criteria may differ from one bank to another , some key factors determining the maximum loan amount that can be sanctioned to you include your credit score , current income level as well as liabilities .  → A high credit score ( closer to 900 ) means you have serviced your previous loans and / or credit card dues properly , leading the lenders to feel that you are a safe borrower , leading to a higher loan amount being sanctioned .  Your current income level and liability ..";

  static const whatAreThe =
      "Being unsecured loans , personal loans have a higher interest rate than those on secured home and car loans .  → At present, many leading banks and NBFCs offer such loans at interest rates of as low as 11.49%.  However , the rate applicable to a borrower is contingent on key factors , including credit score , income level , loan amount and tenure , previous relationship ( savings account , loans or credit cards ) with the lender , etc.";

  static const keyDocuments =
      "Though the documentation requirements vary from one financial institution to another, some key documents you will have to provide with your personal loan application include: * Income proof (salary slip for salaried / recently acknowledged ITR for self-employed ) * Address proof documents * Identity  proof documents * Certified copies of degree / license ( in case of self - employed individuals )";

  static const differenceBet =
      "Part payment : This amount is less than the full loan principal amount and is made before the loan amount becomes due .  * Prepayment : When you pay off your loan in part before it becomes due as per the EMI schedule.  - The prepayment amount may or may not be equal to the total due amount .  Prepayment charges are usually in 2-5 % range of the outstanding loan amount .  - Additionally , many banks do not allow prepayment / preclosure of loan before a specified number of EMIs have been completed .  * Preclosure : It refers to completely paying off a personal loan before the loan tenure has ended.  Just like prepayment charge , preclosure charges range from 2-5 % of the loan amount .";

  static const loanApproval =
      "→ The approval is at the sole discretion of the loan sanctioning officer whose decision is based on the criteria specified by the bank / financial institution → The entire process can take between 48 hours and about two weeks.  Once all the necessary documents are submitted and the verification process is completed , the loan , if sanctioned , is disbursed within seven working days by the bank .  → Do keep all necessary documents ready along with PDC and / or signed ECS form to avoid delays in loan processing ..";

  static const creditReport =
      "→ A higher credit score indicates that you have a good track record with respect to loans .  → Therefore, if your credit score is high (more than 750 in case of CIBIL TransUnion), your chances of being granted a loan are much.  → Additionally , you may be able to negotiate benefits such as a lower interest rate , higher loan amount , waiver of processing charges , etc.  , by leveraging your high credit score.";

  static const howIsHaving =
      "→ Since a personal loan is an unsecured loan , therefore your credit history usually plays a significant role in the approval process .  Equifax , Experian and CIBIL TransUnion are the three credit reporting agencies that operate in India .  - All 3 have tie - ups with lenders and provide their credit rating services to help lenders evaluate prospective borrowers .  → Experian India has collaboration with Union Bank of India , Sundaram Finance , Punjab National Bank , Magna Finance , Indian Bank , Axis Ba ..";

  /// EPF Service
  static const establishment = "Establishment Registration";
  static const kyc = "KYC Updation";
  static const umang = "Umang";
  static const ecr = "ECR/Returns and Payment";
  static const online = "Online Claims Account Transfer";
  static const e = "E-Passbookr";
  static const sharam = "Sharam suvidha commen ECR";
  static const personal = "Personal Portal";
  static const international = "International Workers Portal";
  static const eKyc = "EKYC Portal";

  static const establishmentLink = "https://registration.  shramsuvidha.gov.in/user/login";
  static const kycLink = " https://unifiedportal-mem.epfindia.gov.in / memberinterface /";
  static const umangLink = " https://unifiedportal-mem.epfindia.gov.in / memberinterface /";
  static const ecrLink = "https://unifiedportal-emp.epfindia.gov.in/epfo/";
  static const onlineLink = "https://epfindia.gov.in/site_en/index.php";
  static const eLink = " https://passbook.epfindia.gov.in / Member PassBook / Login.jsp";
  static const sharamLink = "https://return.shramsuvidha.gov.in/user/login";
  static const personalLink = " https://mis.epfindia.gov.in / Pension PaymentEnquiry  /enquiry.jsp";
  static const internationalLink = " https://iwi.mpfindia.gov.in/iw/";
  static const eKycLink = " https://iwu.epfindia.gov.in/eKYC/";

  static const establishmentRegistration =
      "→ An Employee Provident Fund is an initiative designed to offer social security benefits to employees of a particular organization, building stronger employee - employer bonds.  In order to enjoy these benefits to the hilt, employers need to follow a set of rules and guidelines laid out, with registration forming the first step.  + Employers need to provide the following details to successfully register themselves .  → Name and address of company → Head office and branch details → Mention date of incorporation / registration of company Fill up details of employees - total employee strength → Activity the business / enterprise is involved in - i.e.  manufacturing , production , service , etc.  → Legal details - This pertains to legal status of a company , i.e.  whether it is a private firm / public company , partnership or society , etc.  → Owner details , including designation and address of Directors and partners → Particulars related to wage component of employees , i.e.  total wage disbursed during a month → Details of bank with whom company has banking relationship → PAN details → Basic details of employ + Documents required for EPF Registration Online :- Copy of partnership deed if the company is a registered partnership firm - A copy of the  Certificate of incorporation for a Public or Private Limited Company.  This should be issued by the Registrar of Companies → Societies should furnish a copy of their registration certificate → Public and Private Limited Companies need to submit a copy of memorandum and Articles of Association → Societies should furnish a copy of the rules and objects of the society  © All legal documents which might be required under the Income Tax Act → PAN details of company > Partition deed → Proof of incorporation - first sales invoice / license issued by competent authorities → Salary details of employees → Balance sheet details";
  static const kycUpdation =
      " → Upload KYC details in EPF UAN : To upload the KYC document on the EPF UAN , follow the steps mentioned below : * Visit the EPFOs member portal http://vanmembers.epfoservices.in/ Once the page is displayed on your screen , click  on profile on the top bar .  From the drop down list, click on upload KYC document.  Once you have clicked on that , select the KYC information you wish to update .  Next , you will have to upload a scanned self - attested copy of the KYC document .  The document should be either in jpg , pdf or png format , and keep in mind that the maximum file size of your KYC document does not exceed 300 KB .  Once you have uploaded the document , the status of your KYC document will show as pending .  Only once your employer has verified the document and approved of it, the status will show as approved by employer.  Once your employer has approved your document, you will receive an SMS confirming the same.  From then on , the verification process when you make a claim will be much faster and you can expect an approval in no time.  Process of embedding KYC details in EPF UAN : Once your employer has verified and found the details matching and legitimate, he / she will digitally attest the document .  * Once your document has been approved, authorities of the EPFO will then verify your approved document to see if there is any mismatch, discrepancies and so on.  If your documents hasnt been approved you can contact the EPFOS helpline - 1800 118 005 -or mail them at vanepf@epfindia.gov.in .  Once this is all done , if you raise a claim , the verification process will be done in no time and your personal KYC details will be embedded in the EPF UAN system . ";
  static const umangUmang =
      "UMANG : \n→ Unified Mobile Application for New - age Governance ( UMANG ) app was launched in November 2017 as a means of creating a common portal for all the facilities offered by the government .  Additionally , other government developed programs such as the Aadhaar and Digilocker are integrated with the app .  → Umang offers over 180 government services to its users .  One of these is the services offered by the EPFO.  The EPF service on the UMANG app allows users to access information about their EPF account.  This service is extended to both employers and employees .  Though the EPFO tab on the UMANG app, employees can file claims for EPF withdrawal as well as track the status of their claims.  Some of the requirements for using this facility is having your Aadhaar linked to the app, as well as an active UAN.  → UMANG service has been made available on multiple channels like mobile application , web , IVR and SMS which can be accessed through smartphones , feature phones , tablets and desktops .  UMANG has been created with a thought to add convenience to your lifestyle.  UMANG will revolutionize the way how an Indian citizen avails government services today, because it leverages the current accelerated internet and smartphone penetration in our country. ";
  static const ecrReturns =
      "→ ECR / Returns and Payments : Step 1 : Login to EPFO portal using your ECR portal credentials : Once logged in , you can check the details of Establishment Name , Establishment ID , Exemption Status ( PF , Pension , EDLI ) , Establishment Address and PF  office.  Step 2 : To upload ECR , go to Payments tab >> ECR ( UPLOAD ] + Step 3: On next screen , ie ECR File Upload , click on ECR Help File to view the ECR file format To upload the ECR , select the Wage Month  and Salary Disbursal Date. Step 4 : Select your ECR text file to be uploaded. An ECR text file appears like the one below : Step 5 : Select the remaining fields like File Type ( Select ECR ) , Contribution Rate % ( Default value is 12  % ) , add comment , and click on Upload Button : Step 6 : Once uploaded , the file will be validated by the portal against the pre - defined conditions. Once validation is successful , you can see the following screen with Validation Successful message : Click  Verify button generate TRRN ( Temporary Return Reference Number ) . Step 7 : Generate ECR summary sheet by clicking on Prepare Challan button + Step 8 : On the next screen , you can adjust \" Total EDLI Contributions ( ER Share A / C 21 ) \" (  if required ) , enter Administration & Inspection Cha  rges for \" Total EPF Charges ( A / C 2 ) \" & \" Total EDLI Charges ( A / C 22 ) .  \" Once done , click on Generate Challan Button . Step 9 : From the challan list page that follows , click on \" Finalize \" icon after reviewing the Total Amount , under Draft Challan List . You can also download Acknowledgment File and Receipt File under \" In  - Process Challan List \" . Step 10 : The finalized ECR ( Electronic Challan - cum - Receipt ) will look similar to this : Step 11 : Once finalized , you can go ahead and make the payment. Click on \" Pay \" button to make the  payment : Step 12 : Please select Payment Mode as \" Online \" , and select the bank from the list from which you wish to make the payment. Once selected , click on \" Continue \" and this will navigate you to payment gateway for completing the payment  .";
  static const onlineClaims =
      "→ We bring you steps that you must follow while applying for online EPF transfer.  Step 1: Go to the EPFO website, epfindia.com.  → Step 2 : The home page will show a section called online transfer claim portal.  Click on it.  + Step 3 : Before logging in , check if you can apply online .  If not , you will have to submit a physical copy of Form 13 to either your present or your previous employer .  Step 4 : After checking the eligibility , log in and go to the claims section .  There, click on request for transfer of funds.  Step 5: Form 13 will open.  Fill your PF numbers with both previous and current employers and click on click here to get details.  The name and address of the establishment, the PF account held by the EPFO and your name will appear on the screen.  Step 6 : Your date of joining , date of leaving and father / spouses name also appear .  This is to make sure that the money is transferred to the right account.  Step 7 : You will be asked if you want to get the claim attested through your previous employer or your present employer + Step 8 : You will have to type the characters shown in the text box and click on Get Pin .  You will then have to agree to the declaration in the form by clicking on I Agree .  Step 9 : Enter the PIN received on the registered mobile .  The application is submitted .  Step 10: Tracking ID is generated.  Step 11 : The form will be saved in the system.  You have to take a printout of its PDF version, sign it and submit it to the employer within 15 days.  Step 12 : Note down the contact details of people authorized to sign on the form.  These are shown after the form is submitted .  Step 13 : Present and previous employers will verify your details electronically .  + Step 14 : Once approval comes from both employers , funds are credited to the members account by the EPFO branch office .  + Step 15 : The employer plays an important role in this process by verifying the authenticity and signature of the employee .  The EPFO keeps you updated through SMSes.  You can also track the application through the EPFO website. ";
  static const ePassbookr =
      " → E - Passbook : To avail the e - Passbook facility , you will have to compulsorily register on the EPFO official website .  The following details will have to be filled in while registering : → Your mobile number → PAN number → Aadhar Card number → National Population Register number → Bank account number > Voter ID → Driving license → Passport number → Ration Card number Your name as on the  official documents → Email ID - > You will get a captcha image , which you must type in the box provided and you will get the PIN .  → The PIN will be received on your registered mobile number via SMS.  After you submit the form , you will get a confirmation on your registered mobile and it completes the registration process .  You can then login to the EPFO Member Portal and check your EPF status online.  The following is the process to generate your EPF e - Passbook : → Once you have logged in to the member portal , you will get a screen that you can alter your details and also download e - Passbook from this page .  → When you select download , you will be asked to select the state and you will have to select the PF office of that state.  → If you have no idea which is your PF office, you can find the details at http://epf-india.co.in/.\n- You can then enter the EPF account number and your name that is the same as in your EPFO records .  → Fill in the captcha details and avail the PIN number .  - Enter the pin number that you receive on your registered mobile number via SMS.  Finally hit the button - Get Detail .  You can then download the PDF e - Passbook .  Remember the following while downloading EPF e - Passbook : → Only one mobile number can be used for one registration .  - You can however edit the mobile number later on .  You can see only one EPF account under one establishment.  - You can transfer old EPF account to the new one.  → You will not be able to see settled or inoperative accounts.  → You can register using different ID proofs and mobile number to check the details of the different accounts.  Your EPF e - Passbook will contain the month and date wise transactions made in your account from the year in which the annual accounts were updated for the establishment . ";
  static const sharamsuvidha =
      "→ In order to link an establishment with your account you need to be registered at USSP , follow below steps : * To get started using the Shram Suvidha Portal right away , just type the following address into your web browser or click on the link below .  https://shramsuvidha.gov.in Search establishment LIN to link an establishment : Check establishment LIN through know your LIN option at portal main page menu .  * If you find establishment LIN here, login to your Shram Suvidha account at portal home page.  Below screen will be displayed , here enter login details : 1. user id 2. password 3. verification code Click on the submit button to view the landing page .  .  After login, you will see a menu at left hand side.  Choose Link Establishment option from menu .  Now you will see link establishment form , fill out LIN number , previous representative contact details ( registered mobile number and registered email id ) .  * If you don't have mobile / email of previous representative , fill LIN number and choose generate authorization letter option .  Meet your regional head with generated letter . ";
  static const personalPortal =
      "→ Procedure for Generating Jeevan Pramaan / Digital Life Certificate : o Pre - Requisites for Digital Life Certificate Generation The pensioner must have an Aadhaar number * The pensioner must have an existing mobile number * Registration of the Aadhaar number with Pension Disbursing Agency ( bank Post Office  etc ) should have been done already Biometric device list of supported devices is given on the JP portal ) PC with Windows 7.0 & above Android Mobile / Tablet 4.0 & above oso Internet Connectivity";
  static const internationalWorkers =
      " What is a Coc ?  Employees who are going on an assignment to a country with which India has an operational Social Security Agreement are exempted from contributing towards social security schemes in the other country ( host country ) if a Cac has been obtained from the EPFO .  + Stops under the new online process : + EPFO has issued a user manval detailing the steps to be followed by the employee and the employer to apply for a Cocas per the new online process .  Here is the step by step process for applying for a Coc.  For employee :- > 1. Visit the international workers portal on the EPFO website : https : // iwu.cpfindia.gov.in/iwu/ and select APPLICATION FOR COC.  - > 2. Mention Universal Account Number ( WAN ) and select appropriate member ID .  + 3. Complete and submit the application.  A reference number of the application will be generated upon submission and the pre - filled application will be available for download and print .  → 4. Download and print the application.  Sign the application and upload it along with a copy of anes passport .  + To upload the signed application , visit the international workers portal and select UPLOAD SIGNED APPLICATION FOR COC .  The employee con download the pre - Filled application from here as well .  + For employer : Once the employee has uploaded the signed application , the employer needs to follow these steps : + 1. Visit the international workers portal and login using the same login credential used for the Unified Portal ( Employer ) .  + 2. Select Certificate of Coverage from the tab Application.  → 3. Select the appropriate Reference Number to get the signed application uploaded by the employee, verify all the details and approve / reject the application accordingly.  - 4. Once the application is approved, download the application signed by the employee.  To download , select Signed applications Members under the tab Downloads .  → 5. Take a print of the downloaded application and sign with date and stamp at the appropriate place .  6. Upload the duly signed and stamped application.  To upload, select Signed applications - Employer under the tab Upload.  - > Once the signed copy of the application is uploaded , the relevant PF office will process the application and generate the CoC accordingly, - > Both employee and employer can track the status of the application from the international workers portal by selecting TRACK APPLICATION FOR COC  and providing application reference number and date of birth of the employee . ";
  static const eKycPortal =
      "→ On 17 Oct 2017 , EPFO launched an online facility for its subscribers to link their 12 - digit unique Aadhaar number with their Universal ( portable PF ) Account Number ( UAN ) on Oct 2017. Using new facility eKYC at EPFOS website www.epfindia.  gov.in , EPFO members can online link their respective UAN with Aadhaar .  In this process, your employer is not involved.  Use eKYC portal if your Aadhaar is not linked with your UAN .  Your details in UAN such as Name and Date of Birth should match Aadhaar .  + Section How to Verify your KYC ( PAN , Bank Details , Aadhaar ) in UAN explains that in detail.  Go to EPF website http: // www.epfindia.com + In Online Services section select eKYC Portal.  + On clicking eKYC portal you will be taken to new eKYC portal .  This portal contains two sections .  The first section is for EPFO field officer and second for EPFO Member.  As you contribute to EPF you are a member.  In EPFO member section click on \" LINK UAN AADHAAR \".  * You will be taken to a new page where you need to provide your UAN after the mobile number which is linked to UAN gets displayed .  Click on \"Generate OTP\" button.  Enter the OTP, which you have to enter and provide your Aadhaar number.  + After the successful OTP verification and if your personal details between UAN - Aadhaar match then Aadhaar will be linked to your UAN .  + You can also track whether UAN is linked with Aadhar using eKYC portal through TRACK EKYC .  Track Linking of UAN and Aadhaar using eKYC Portal : Its easy to keep track of your whether your LAN is linked with Aadhar using eKYC Portal .  * Go to EPF website http: // www.epfindia.gov.in In Online Services section select eKYC Portal.  * On clicking eKYC portal you will be taken to new page the eKYC portal .  This portal contains two sections .  The first section is for EPFO field officer and second for EPFO Member.  As you contribute to EPF you are a member.  In EPFO member section click on TRACK EKYC.  It takes you to another window , where you need to add UAN number as shown in image below";

  ///   Loan Type
  static const personalT = "Personal Loan";
  static const home = "Home Loan";
  static const business = "Business Loan";
  static const education = "Education Loan";
  static const car = "Car Loan";
  static const gold = "Gold Loan";
  static const aadhar = "Aadhar Loan";
  static const pan = "Pan Loan";
  static const creditCard = "Credit Card Loan";
  static const bike = "Bike Loan";

  static const personalLoan =
      "If you need a loan quickly, a personal loan may be an option for you.  A personal loan (or personal loan) is an unsecured loan and you get it quickly.  But yes, one can expect the interest rate of a personal loan to be higher than a secured loan.  Let us know in detail about personal loans.  First of all, a personal loan is available very quickly, some even claim that they will give you a loan in a few minutes.  Do not just go to claims.  But yes, you can expect to get a loan soon.  Secondly, a personal loan is an unsecured loan.  That is why you do not need to keep some pledge (security).  This is also one of the reasons for getting loan early.  Because less documents are required, that is why the loan is available sooner.";
  static const homeLoan =
      "Generally you take a home loan for buying a house / flat, plot or construction / renovation.  Sometimes home loan is also taken to increase or repair the house.  We are giving you all the necessary information about the home loan here.  Before starting the home loan process, assess the amount of money that you can earn and how much the banks can loan accordingly. Your ability to take a home loan depends on the capacity to repay it.  .  It depends on your monthly earnings, expenses and family's earnings, assets, liabilities, income stability.  Banks first see if you will be able to repay the home loan on time.  The more money you get in your hands every month, the more the amount of your home loan will increase.";
  static const businessLoan =
      "To promote small enterprises in the country, the government has introduced several loan schemes.  Apart from the Pradhan Mantri Mudra Yojana, there are many other schemes in which you can take small loans to big loans.  At this time, according to the schemes of the central and state government, you can take a loan from Rs 50,000 to n lakh for your business.  In fact, banks decide to give you a loan according to your business plan.  If the bank feels that your business and profits from it will be so much that you will be able to repay the loan of the bank within the stipulated period after completing your expenses, only then the bank approves your loan.  What are the benefits of taking a business loan?  Financial support for inward business needs of cash, financial needs to be met for both short and long term";
  static const educationLoan =
      "Quality education is very important for a person's complete and successful life.  For some people, it may be a graduation from a top institute.  At a time when the cost of studies is constantly increasing, the cost of studying in the top institutes of the country and abroad is quite high.  Keeping this in mind, parents invest in mutual funds, some fixed deposits and some resort to ULIPs.  Even after all this, the amount may be less for your studies.  In the form of education loan, you get a lot of help in such situations.  This loan fills the gap between your need and the money available.  According to a study, the cost of studying is increasing at the rate of 15 percent annually.  At this time, if the cost of studies is Rs 2.5 lakh, then after 15 years, it will cost 20 lakh rupees to do MBA.";
  static const carLoan =
      "It is everyone's dream to take a branded car with them.  A car not only makes your life comfortable, but also reduces many difficulties.  Reaching the office while battling public transport or going out for weekends, everything becomes very easy.  Earlier, buying a car was a big thing for anyone, because it had to spend a lump sum, but now it is very easy due to the easy availability of a car loan.  Banks and non-banking finance companies offer car loans on easy monthly installments, which has made it very easy to buy cars now.  Due to this, your budget is not deteriorated and convenience is also provided.";
  static const goldLoan =
      "Many times we need money in emergency.  In such a situation, sleeping in the house can be quite useful.  Companies like Manapuram Finance, Muthoot Finance, IIFL offer gold loans.  Some government and private sector banks also offer gold loans.  You can take cash by pledging gold ornaments, coins etc.  After repaying this money, the pledged jewelery or gold is returned to the customer, after which the interest on the loan amount has to be paid.  Gold loan has lower interest rate than personal loan.  Personal .. How much interest do you think?  Finance companies and bank interest rates are different for gold loans.  These range from n percent to 15 percent.  For example, ICICI Bank charges interest on gold loans ranging from n percent to 16.50 percent annually.  Along with this, one percent processing fee is also charged.";

  /// Aadhar
  static const aadharLoan11 = "What is Aadhar?";
  static const aadharLoan12 = "Update your Aadhar details";
  static const aadharLoan13 = "Check the status";
  static const aadharLoan14 = "Update the address in your Aadhar";
  static const aadharLoan15 = "Request for address validation letter";
  static const aadharLoan16 = "What is e-Aadhar about UIDAI?";
  static const aadharLoan17 = "What is a masked base?";
  static const aadharLoan18 = "What are root devices?";
  static const aadharLoan19 = "Is the physical copy of Aadhar e-Aadhar equally valid?";
  static const aadharLoan1 =
      "Base number  A 12-digit random number issued by the UIDAI to all residents of India after completing the verification process laid down by the authority.  is .  Any person of any age who is a resident of India can voluntarily enroll for obtaining Aadhaar number without any gender distinction.  A person seeking enrollment has to provide the minimum demographic and biometric information during the enrollment process, which is completely cost-free.  A person has to enroll for Aadhaar only once and is distinguished through the D-duplication system, only one Aadhaar is created after D-duplication.  Aadhaar number is authenticated by a cost-effective online method.  It is unique and strong enough to eliminate duplicate and bogus identities and can be used as a basic / primary identity to promote effective delivery, transparency and good governance of various government welfare schemes and services.  It is the only program of its kind across the world in which people of state of the art digital and online identity are being provided free of cost to the people at large for the service delivery work in the country. Sambhavna has the potential to change. Aadhaar number is also devoid of any kind of intelligence and it is not an external outline of people on the basis of caste, religion, income, health and geography.  Aadhaar number is proof of identity, however it does not confer citizenship and domicile rights to Aadhaar number holders. Social and financial inclusion, public sector distribution reforms, fiscal budget management to enhance convenience and provide hassle free governance to the people.  Aadhaar is a strategic policy tool for promotion.  The Aadhaar card can be used as a permanent financial address and to facilitate the financial inclusion of the deprived and weaker sections of the society and hence it is a tool for distributive justice and equality.  Aadhaar Identification platform is one of the major pillars of \"Digital India\" in which a unique identity is provided to every resident of the country.  Base number of  Using this enables the Government of India to reach out to the residents of the country directly for the delivery of various subsidies, benefits and services.";
  static const aadharLoan2 =
      "Have you changed your name or mobile number recently?  Has your child turned 5 or 15 years old?  You can correct / update your Aadhaar details (demographics and biometrics) at the nearest enrollment / update center.";
  static const aadharLoan3 =
      "Check the update status of your address using the URN (Update Request Number).  You can check the status of the validation letter of the requested address using the SRN (Service Request Number)";
  static const aadharLoan4 =
      "Have you moved to a new city?  Or recently changed your address?  Don't forget to update your new address in your Aadhaar.  If you have a valid address proof or you have received a validation address (who do not have a valid address proof), you can update your address.";
  static const aadharLoan5 =
      "Not a valid address proof?  With the help of the validation letter of address sent by UIDAI, residents can still get their address updated in their Aadhaar.";
  static const aadharLoan6 =
      "The Unique Identification Authority of India (UIDAI) is a statutory authority established by the Government of India under the provisions of the Aadhaar (Targeted Delivery of Financial and Other Subsidies, Benefits and Services) Act, 2016 (\"Aadhaar Act, 2016\"), Electronics and Information  Under the Ministry of Technology (MEITY) dated 12 July 2016. Prior to its establishment as a statutory authority, UIDAI was the erstwhile Planning Commission (now NITI Aayog) Gazette Notification no.  A-43011/02/2009 - Admin-1 was functioning as an attached office on 28th January, 2009.  Later, on 12 September 2015, UIDAI was associated with the then Department of Information and Technology (DeitY) by the government by amending the Government Work Allocation Rules. UIDAI was established with a unique identity number called \"Aadhaar\" to all residents of India.  (UID) to provide for (a) elimination of dual and bogus identification and (b) to authenticate and certify it easily and economically. First UID Number A resident of Maharashtra, Nandurbar was released on 29 September 2010.  The Authority has so far provided Aadhaar numbers to more than 120 crore Indian residents. Under the Aadhaar Act 2016, UIDAI Aadhaar enrollment and certification, including the management and operation of all stages of the Aadhaar life cycle, including issuance of Aadhaar numbers and  Responsible for developing policy, procedure and system for conducting authentication and ensuring security of identity information and authentication records. To learn more about UIDAI, please refer to the organizational structure sections of the website";
  static const aadharLoan7 = "E-Aadhaar is a password protected electronic copy of Aadhaar, digitally signed by a competent officer of UIDAI.";
  static const aadharLoan8 =
      "As per the Aadhaar Act, E-Aadhaar is as valid as a physical copy of Aadhaar for all purposes.  For UIDAI circular on validity of e-Aadhaar, please visit e-Aadhaar.";
  static const aadharLoan9 = "The Mask Aadhaar option allows you to mask your Aadhaar number in your downloaded Aadhaar.";

  /// pan
  static const panLoan11 = "What is PAN?";
  static const panLoan12 = "Who can apply for PAN?";
  static const panLoan13 = "Who can apply on behalf of minor, insane, foolish, retarded, deas and wards of the court?";
  static const panLoan14 = "Do I need to apply for a new PAN when I move from one city to another?";
  static const panLoan15 = "Can I get more than one PAN?";
  static const panLoan16 = "What should I do if I have more than one PAN?";
  static const panLoan17 =
      "Is any third party used for verification of identity and address with the genuineness of the documents submitted by the applicants?";
  static const panLoan18 = "Is email ID mandatory to get e-PAN";
  static const panLoan1 =
      " The UIDAI asks the resident to confirm the address (from several address proofs), on which he wants to distribute his Aadhaar letter.  Based on the choice of the resident, UIDAI captures the details as per supporting documents.";
  static const panLoan2 =
      " The Permanent Account Number (PAN) is a ten-digit alphanumeric identifier (identifier) issued by the Income Tax Department.  A unique PAN is issued to each such person (ie individual, firm, company etc.).";
  static const panLoan3 =
      "All existing assessees or taxpayers or individuals, who are required to file income returns, even if filing on behalf of someone, are required to have PAN.  Any person who wants to do financial or financial transactions, where it is mandatory to file PAN, they also have to have PAN.";
  static const panLoan4 =
      "Section 180 of the IT Act, 1971 provides that minor, insane, foolish, retarded, dead and wards of the court and such other persons can be represented through the Represpective Assisi (Representative Assessee).  In such cases: In the application for PAN, details of minor, insane, foolish, retarded, dead and court wards etc. should be given in item 14 of the application for PAN.  .";
  static const panLoan5 =
      "The Permanent Account Number (PAN), as the name implies, is a permanent number and does not change.  However, by changing the address, such an officer can change.  Therefore, such changes should be reported to the ITD so that the PAN database of the ITD can be updated.  The applicant can notify the change in address by requesting for a new PAN card or / and filling up the form for change or modification in the PAN data.  This form can be submitted online on any TIN-FC or NSDL e-Governance TIN website.";
  static const panLoan6 =
      " No, it is illegal to obtain / keep more than one PAN, for which Rs.  There may be a fine of 10,000.  Therefore, it is advised not to get / keep more than one pan.";
  static const panLoan7 =
      "Currently, you can submit the PAN Change Request Application Form by filling the details of the PAN you are using, at the top of the form in the form.  All other PAN / s you have inadvertently allotted should be mentioned in item no. 11 of the form and the corresponding PAN card copy / s should be submitted along with the form for cancellation.";
  static const panLoan8 =
      "Yes, as per the procedure laid down by the Income Tax Department, verification of documents submitted by them during PAN application as well as verification of identity and address of PAN applicants can be done by third party.  If found fake, appropriate action can be taken by the Income Tax Department.";

  /// credit Card
  static const creditCard11 = "What is a loan on Credit Card?";
  static const creditCard12 = "Features of a loan on Credit Card";
  static const creditCard13 = "Eligibility for loans on Credit Card?";
  static const creditCard14 = "Advantages of a loan on Credit Card?";
  static const creditCard1 =
      " With effect from 12 February 2014, the functionality of submission of foreign remittance details in Form 15CA and its related facilities has been discontinued by TIN and made available on the Income Tax Department's e-filing portal www.incometaxindiailing.gov.in.";
  static const creditCard2 =
      " What is a Loan on Credit Card?  The uses of credit cards are many.  Starting from cashless transactions to reward points and special deals, you can use credit card anywhere across the globe.  Also, cardholders can avail pre-approved loans on credit cards within or over their credit limit.  Similar to the usual loan schemes, the issuer essentially loans you the amount which you will be able to repay at a later date while being charged a definite interest rate.";
  static const creditCard3 =
      "Features of a Loan on Credit Card Different banks offer comprehensive loan scheme when it comes to loan on credit cards. Listed below are some of the features of loan on credit card. Since most of the loan on credit cards are pre-approved, you need not submit any extra documentation, the loan will be processed and disbursed quickly. With EMI schemes offered by the issuers, you will be able to break your expensive purchases into easy affordable instalments. Some banks also offer loan against other bank's credit card through Balance Transfer on EMl where you can transfer the outstanding balance on other credit cards to one credit card and pay the EMI. Issuers also offer you the option of taking a loan within or over your credit limit.";
  static const creditCard4 =
      "Eligibility for Loans on Credit Card? Most credit card loans are unsecured and do not require any collateral for the loan. Hence, the loan is offered to select cardholders only. Issuers have a stringent eligibility criteria when it comes to granting a loan on credit card. The cardholder should have a commendable credit history and a good purchase and repayment pattern to be able to apply for a loan on credit card. Quantum of Loan The quantum of loan on credit card usually depends on the credit limit. Some issuers also offer loan over and above the credit limit where the availed loan amount will not be blocked against the credit limit. Also, starting from a minimum purchase amount of Rs. 2000, you will be able to convert your purchases to loan and pay it as EMIS.";

  /// bike

  static const bike11 = "What is Bike Loan?";
  static const bike12 = "Eligibility criteria for a bike Loan?";

  static const bike1 =
      "The thought of buying your desired four-wheeler is itself quite exciting. It is like taking the first big plunge towards a happy and prosperous life. A Bike cuts down your travelling hassles and extra expenses while improving your societal status. But what if you can't afford the Bike that you desire to own? You can't obviously spend all your savings on your Bike. In such a situation, it is a Bike loan that comes to your help. These are financial advances made by banks or fınancial institutions to help people buy the desired Bike for private or commercial use. At present getting a Bike loan from banks has become very easy and convenient. An easy monthly instalment option is that you need to repay the Bike loan amount. So, this becomes a win-win scenario, where you can act smart by purchasing the ideal Bike for yourself and also avoid the unwanted debt. But when you are availing a Bike loan for the very first time, it is extremely important to know the Bike financing basics before you take the plunge.";
  static const bike2 =
      "Eligibility Criteria for a Bike Loan? The basic eligibility particulars to get a Bike loan are as follows: The applicant should be residing in India, be it in rural, semi-urban or urban India. The age limit of the applicant for applying for Bike loan should be at least 18 years or a maximum of 75 years. He/she should have a monthly income of Rs. 10,000. The applicant should be either a salaried or a self-employed individual with at least 2-3 years of working experience. The applicant should have an approved residence with a good amount of parking space inside or outside. He/she should have a residential stability of at least one year.";

  /// state

  static const Andaman = "Andaman Nicobar";
  static const Bihar = "Bihar";
  static const dadra = "Dadra Nagar Haveli";
  static const Gujarat = "Gujarat";
  static const Andhra = "Andhra Pradesh";
  static const Chandigarh = "Chandigarh";
  static const Pondicherry = "Pondicherry";
  static const West = "West Bengal";
  static const Tripura = "Tripura";
  static const Himachal = "Himachal Pradesh";
  static const Rajasthan = "Rajasthan";
  static const Assam = "Assam";
  static const New = "New Delhi";
  static const Punjab = "Punjab";
  static const Jharkhand = "Jharkhand";
  static const Uttar = "Uttar Pradesh";
  static const Karnataka = "Karnataka";
  static const Nagaland = "Nagaland";
  static const Goa = "Goa";
  static const Uttarakhand = "Uttarakhand";
  static const Daman = "Daman Diu";
  static const Maharashtra = "Maharashtra";

  static const Jan02 = "Jan 02 Saturday ";
  static const Jan_02 = "Second Saturday";
  static const Jan12 = "Jan 12 Tuesday";
  static const Jan_12 = "Birthday of Swami Vivekananda";
  static const Jan23 = "Jan 23 Saturday";
  static const Jan_23 = "Birthday of Subhas Chandra Bose";
  static const Jan23_1 = "Jan 23 Saturday";
  static const Jan_23_1 = "Fourth Saturday";
  static const Jan26 = "Jan 26 Tuesday";
  static const Jan_26 = "Republic Day/Gaan-Ngai";
  static const feb13 = "Feb 26 Saturday ";
  static const feb_13 = "Second Saturday";
  static const feb27 = "Feb 27 Saturday ";
  static const feb_27 = "Fourth Saturday";
  static const march13 = "March 13 Saturday  ";
  static const march_13 = "Second Saturday";
  static const march27 = "March 27 Saturday ";
  static const march_27 = "Fourth Saturday";
  static const april01 = "April 01 Thursday  ";
  static const april_01 = "Bank Closing of Accounts";
  static const april02 = "April 02 Friday  ";
  static const april_02 = "Good Friday";
  static const april10 = "April 10 Saturday  ";
  static const april_10 = "Second Saturday";

  static const april14 = "April 14 Wednesday  ";
  static const april_14 = "Dr.Babasaheb Ambedkar";
  static const april15 = "April 15 Thursday ";
  static const april_15 = " Himachal Day/Bohag Bihu";
  static const april24 = "April 24 Saturday y";
  static const april_24 = "Fourth Saturda";
  static const may01 = "May 01 Saturday  ";
  static const may_01 = "Maharashtra Din/Labour Day";
  static const may08 = "May 08 Saturday  ";
  static const may_08 = "Second Saturday";
  static const may14 = "May 14 Friday  ";
  static const may_14 = "Bhagvan Shree Parshuram Jayanti";
  static const may22 = "May 22 Saturday  ";
  static const may_22 = "Fourth Saturday";
  static const may26 = "May 26 Wednesday ";
  static const may_26 = "Buddha Pournima";

  static const june12 = "June 12 Saturday  ";
  static const june_12 = "Second Saturday";
  static const june26 = "June 26 Saturday  ";
  static const june_26 = "Fourth Saturday";
  static const july21 = "July 21 Wednesday  ";
  static const july_21 = "Bakri Id (Eid-UI-Adha)";
  static const july24 = "July 24 Saturday  ";
  static const july_24 = "Fourth Saturday";
  static const august14 = "August 14 Saturday  ";
  static const august_14 = "Second Saturday";
  static const august19 = "August 19 Thursday  ";
  static const august_19 = "Muharram (Ashoora)";
  static const august28 = "August 28 Saturday  ";
  static const august_28 = "Fourth Saturday";
  static const september11 = "September 11 Saturday  ";
  static const september_11 = "Second Saturday";
  static const september25 = "September 25 Saturday  ";
  static const september_25 = "Fourth Saturday";
  static const october02 = "October 02 Saturday  ";
  static const october_02 = "Mahatma Gandhi Jayanti";
  static const october06 = "October 06 Wednesday  ";
  static const october_06 = "Mahalaya";
  static const october09 = "October 09 Saturday  ";
  static const october_09 = "Second Saturday";
  static const october12 = "October 12 Tuesday  ";
  static const october_12 = "Durga Puja (Maha Saptami)";
  static const october13 = "October 13 Wednesday  ";
  static const october_13 = "Durga Puja (Maha Ashtami)";
  static const october14 = "October 14 Thursday  ";
  static const october_14 = "Dussehra/Ayutha Pooja";

  static const october15 = "October 15 Friday  ";
  static const october_15 = "Durga Puja/Dushera";
  static const october20 = "October 20 Wednesday  ";
  static const october_20 = "Lakshmi Puja";
  static const october23 = "October 23 Saturday  ";
  static const october_23 = "Fourth Saturday";
  static const november04 = "November 04 Thursday  ";
  static const november_04 = "Deepavali/Kali Puja";
  static const november13 = "November 13 Saturday  ";
  static const november_13 = "Second Saturday";
  static const november19 = "November 19 Friday  ";
  static const november_19 = "Guru Nanak Jayanti";
  static const november27 = "November 19 Saturday  ";
  static const november_27 = "Fourth Saturday";
  static const december11 = "December 11 Saturday  ";
  static const december_11 = "Second Saturday ";
  static const december25 = "December 25 Saturday  ";
  static const december_25 = "Christmas";
  static const december25_1 = "December 25 Saturday  ";
  static const december_25_1 = "Fourth Saturday";

  /// instant Loan Details
  static const activeUnaLink = " https://passbook.epfindia.gov.in /MemberPassBook/Login.jsp";
  static const balanceOnlineLink = "https://passbook.epfindia.gov.in Member PassBook / Login.jsp";
  static const pensionersLink = "https://mis.epfindia.gov.in / Pension PaymentEnquiry /";
  static const TEENLinkLink = "https://unifiedportal-epfo.epfindia.gov.in / publicPortal / no - auth / mişReport / home / loadSearchTrrn Home";
  static const newsLink =
      " https://news.google.com/news/search/section/q / employee % 20provident % 20fund / employee % 20provident % 20fund ?  hl = en & amp ;  gl = US & amp ;  nedrus";
  static const helplineLink = "1800118005";
  static const balance_smsLink = "7738299899";
  static const FAQLink = "http://pfapp.mypfbalance.com/faq.html";
  static const epfOnlineLink = "https://www.epfindia.gov.in/site_en/KYCS.php";
  static const locateOfficeLink = "https://www.epfindia.gov.in/site_en/KYCS.php";
  static const activeUna = "* Go to the EPFO website and click Activate UAN corner of the page.  on the bottom-right \n\n* Key in your UAN, name,"
      " date of birth, mobile number, and the captcha text.  Then click Get Authorization Pin.  \n\n* You will now get a one-time password (OTP) on your mobile number.  Copy it.  \n\n* Verify all the details on the EPFO page, and tick the check-box next to I Agree.  \n\n* Paste the OTP from your phone next to Enter OTP and click Validate OTP and Activate UAN.  \n\n* This will activate your UAN and the password will be sent to your mobile number.  \n\n* You will still need to wait for six hours before you can log in to the EPFO portal to check PF balance.  \n\n* Six hours after activating UAN, you can check PF balance.";

  static const balanceOnline = "* Log in to the EPFO website and click on the Our Services tab • Choose the For Employees option from the drop - "
      "down menu .  On the login page , enter the username which is the UAN and password to log in .  \n\n* Once logged in, employees can access their EPF details.  Click on the respective passbook to check your EPF balance with different employers.  ";

  static const pensioners =
      "The individual must be a part of the EPF scheme to be eligible for EPS.  The employee does not contribute towards EPS , only the employer does .  o Depending upon the employees age and duration of service, he / she will be able to withdraw the EPS amount, or it can be carried forward to their next job.  In case an individual changes jobs, only the EPF will be transferred to the new employer, the EPS will not be transferred.  \n\n* EPS contributions stay with Employees ' Provident Fund Organization ( EPFO ) if an employee changes his / her job . ";
  static const TEEN =
      "* Go to the Employer Provident Fund site : https://www.epfindia.com Here in the Our Services Section, Click on the link For Employers as shown below.  Now in the Services Section, you can see two link TRRN Query (Up to December, 2016) and EPFO Establishment Search / TRRN Query.  \n\n* Suppose you want to see status of your PF payment for which the challan had been generated before December 2016 then you will have to click the Link TRRN Query ( Upto December , 2016 ) Here you will enter your TRRN no .  and the captcha to see the status of the PF Challan payment as shown .  You can also download the status as a PDF .  Now to see the PF Challan payment status of the Challan prepared after December 2016, you will have to click the link EPFO Establishment Search / TRRN Query in the services section.  After clicking on the link you will see a page as below, where you will have to click on the TRRN Search query link.  Now you can see the page where you have to enter your TRRN along with the Captcha and click on Search button .  Clicking on the search button will provide you the status of the PF Challan with TRRN number you entered along with other information such as Challan generated on , Establishment ID , Establishment Name , Challan Type , Total Members , Amount , Payment Confirmation Bank , CRN , Payment  confirmed on and some more as shown below .  Here you can also click on the Download PDF button on the upper right corner as shown above to download the receipt of payment and status of the PF Challan as shown below to keep for your records .  This is how you can get the Provident Fund payment receipt and status using TRRN number .";
  static const news = "* Epfo's latest news, breaking news.  of plz Clilck The Button . ";
  static const helpline = "Helpline number solve your query related EPF by just giving a call on a toll free number 1800118005";
  static const balance_sms = "Check your PF balance without internet through SMS 7738299899";
  static const FAQ =
      "Employees Provident Fund How to Check EPF Balance ?  \n\n* Claim pf status check ?  What is the maximum amount that one can receive as gratuity benefit ?  What is form n ?  What is an e - passbook ?  How to transfer EPF Online?  \n\n* All Question Solution.  plz Clilck The Button . ";
  static const epfOnline = "* View all Tender Notifications issued by Employees Provident Fund Organization.  Search live eProcurement business "
      "opportunities available in EPFO Tenders section.  \n\n* Employees Provident Fund Organization Tenders are further filtered by Bid Submission Date , Tender Value , Project Location & Product Category o Get email alert on Tenders from Employees Provident Fund Organization - ( EPFO) . ";
  static const locateOffice = "of Visit the EPFO website and click on the \"Locate an EPFO Office\" option.  oso alternatively, click on the link"
      " http: //search.epfoservices.org:81/locate _office / office_location.php to find EPFO offices directly .  \n\n* In case you want to know the EPF office having jurisdiction over address , select the first option .  an Now select your state or union territory from the drop down list and select the district where you want to locate the EPF office.  Results will be displayed containing the details of the regional office and the office under whose administrative control the office is operating .  In case you want to know the jurisdiction of an EPF office, then click on the second option and select the office from the drop down menu and click on the submit button.  The result displayed contains the complete address of the office and e - mail address of concerned authorities .  Results are displayed on the screen mentioning the state , district , jurisdiction area and the jurisdiction status of the office .";
}
