class AppURLPath {
  // static const String baseURL = "https://api-laravel.famalii.saberion.org";
  static const String baseURL = "https://bankingapi.famalii.com";
  static const String basePath = "/api/v1";

  /// Login/SignUp
  ///
  static const String loginPath = "/auth/login";
  static const String tokenRefreshPath = "/auth/refresh";
  static const String setMobilePath = "/registration/mobile";
  static const String verifyMobilePath = "/registration/mobile/verify";
  static const String setEmailPath = "/registration/email";
  static const String signupPath = "/registration/register";
  static const String signupStatusPath = "/registration/status";

  ///Account
  ///
  static const accountsPath = "/accounts";
  static const accountSetTheme = "/accounts/set_theme";


  ///Transactions
  ///
  static const transactionHistoryPath = "/transactions/history";

  ///Actions
  ///
  static const requestMoney = "/requestmoney/phone";
  static const recipient = "/recipiants";
  static const recipientVerify = "/verify";
  static const sendMoney = "/sendmoney";
  static const addMoneyCC = "/addmoney/creditcard";

  static const billVerify = "/billpayments/verify";
  static const billPay = "/billpayments/make_payment";

  /// Spaces
///
  static const spaces = "/savings";
  static const spacesAddMoney = "/addmoney";
  static const spacesWithdrawMoney = "/withdraw";
}
