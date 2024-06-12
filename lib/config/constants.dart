class FontSizeValue {
  static const fontSize28 = 7.2;
  static const fontSize25 = 6.7;
  static const fontSize22 = 5.9;
  static const fontSize20 = 5.4;
  static const fontSize18 = 4.8;
  static const fontSize16 = 4.3;
  static const fontSize15 = 4.02;
  static const fontSize14 = 3.75;
  static const fontSize13 = 3.45;
  static const fontSize11 = 2.88;

}
class DateTimeFormatType {
  static const String yearMonthDay = "yyyy-MM-dd";


  // it will worth later use next as YEAR_MONTH_DAY1 for better formating
  // and only uncomment used ones
  // static const String MONTH_DAY = "MMM dd";
  // static const String YEAR_MONTH_DAY = "yyyy MMM dd";
  // static const String YEAR_MONTH_DAY3 = "dd MMM yyyy";
  // static const String YEAR_MONTH_DAY2 = "dd-MM-yyyy";
  // static const String YEAR_MONTH_DAY6 = "hh:mm a";
  // static const String API_DATE = "yyyy-MM-dd";
  // static const String API_DATE_LONG = "yyyy-MM-dd'T'HH:mm:ss";
  // static const String API_SHOW_DATE_TIME_AM = "dd/MM/yyyy HH:mm a";
  // static const String YEAR_MONTH_DAY4 = "dd MMM yyyy HH:mm";
  // static const String API_SHOW_DATE_with_SLASH = "dd/MM/yyyy";
  // static const String API_SHOW_DATE_DAY_AND_TIME= "dd-MMM  |  HH:mm a";
  // static const String API_DATE2 = "yyyyMMdd";
  // static const String MONTH_DAY_YEAR = "MMMM d, yyyy";
  // static const String MONTH_DAY_YEAR2 = "MMM d, yyyy";
}


class Constants {
  static const buttonRadius = 14.0;

  static const String yearMonthDay = "yyyy MMM dd";
  static const String apiDate = "yyyy-MM-dd";
}

class ShardPrefKey {
  static const sessionToken = "SESSION_TOKEN";
  static const appLocale = "APP_LOCALE";
  static const appPlatform = "APP_Platform";
  static const appUserName = "USER_NAME";
  static const appPassword = "USER_PASSWORD";

  static const userProfile = "USER_PROFILE";
  static const userAccounts = "USER_ACCOUNTS";

  static const userLoggedIn = "LOGGED_IN";

  static const signUpCurrentView = "SIGN_UP_CURRENT_VIEW";
  static const signUpInfo = "SIGN_UP_INFO";

}

class ScanAndPayRouting {
  static const readyToPay = "readyToPay";
  static const awaiting = "awaiting";
}