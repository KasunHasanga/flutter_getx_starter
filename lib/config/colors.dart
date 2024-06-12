import 'package:flutter/material.dart';

extension AppColors on BuildContext {
  //
  static const Color kThemeBackgroundDark = Color(0xFF202330);
  static const Color kThemeBackgroundLight = Color(0xFFFFFFFF);

  static const Color kGreen = Color(0xFF62C177);
  static const Color kLightGreen = Color(0xFF4CAF50);
  static const Color kSeaGreen = Color(0xFF62C17B);
  static const Color kPastelMintGreen = Color(0xFFC2E7C9);
  static const Color kTextGreen = Color(0xFF76D13E);
  static const Color kCardBgGreen = Color(0xFFEBFFEF);
  static const Color kCardBorderGray = Color(0xFFF3CBB1);
  static const Color kCardBgGray = Color(0xFFFFF2EA);
  static const Color kGreenBorder = Color(0xFF97D5D5);
  static const Color kGridGreen = Color(0xFFDFEFE2);
  static const Color kLighterGreen = Color(0xFFF0FDF8);
  static const Color kTransparent = Color(0x00FFFFFF);
  static const Color kWhite = Color(0xFFFFFFFF);
  static const Color kWhite60 = Color(0x60FFFFFF);
  static const Color kStroke26 = Color(0x268F92A1);
  static const Color kBlack20 = Color(0x20000000);
  static const Color kBlack = Color(0xFF000000);
  static const Color kTextGray = Color(0xFF575A66);
  static const Color kLightGray = Color(0xFFE0E6EB);
  static const Color kTextLightGray = Color(0xFF8A8C95);
  static const Color kTextMediumGray = Color(0xFF9FA2B0);
  static const Color kTextBlack = Color(0xFF202330);
  static const Color kTextDarkGray = Color(0xFF888B97);
  static const Color kBorderColor = Color(0xFFE0E0E7);
  static const Color kRed = Color(0xFFFF6D51);
  static const Color kLightOrange = Color(0xFFf69844);
  static const Color kLightBlue = Color(0xFF78C3E3);
  static const Color kLighterBlue = Color(0xFFBCEFFF);
  static const Color kTextDarkBlue = Color(0xFF0B3D82);
  static const Color kTextBlue = Color(0xFF235EB0);
  static const Color kBlueBg = Color(0xFF1D349A);
  static const Color kShadeBlue = Color(0xFFE8EFFF);
  static const Color kBorderBlue = Color(0xFFCADEF0);
  static const Color kBlack60 = Color(0x603C3C43);
  static const Color kLoginDivider = Color(0xFFD6DDEB);


  static const Color kShadow = Color(0x259BA0B7);
  static const Color kBgColor = Color(0xFFEFEFF2);

  ///Spending Colors
  static const Color kSpendingColor01 = Color(0xFFFF8B47);
  static const Color kSpendingColor02 = Color(0xFFF3DA49);
  static const Color kSpendingColor03 = Color(0xFF61CE5B);
  static const Color kSpendingColor04 = Color(0xFF3857BC);
  static const Color kSpendingColor05 = Color(0xFFAE7DF0);
  static const Color kSpendingColor06 = Color(0xFF6A7B91);
  static const Color kSpendingColor07 = Color(0xFF3993E5);

  ///Chart Colors
  static const Color kChartColor01 = Color(0xFFBFF3F4);
  static const Color kChartColor02 = Color(0xFFBECBF3);
  static const Color kChartColor03 = Color(0xFFFED9D9);

  ///Create new card
  static const Color kCreateNewCardBgColor1= Color(0xFFE5F1FF);
  static const Color kCreateNewCardBgColor2 = Color(0xFFFFF0D6);
  static const Color kCreateNewCardBgColor3 = Color(0xFFFFD9D3);

  ///Menu containers Colors
  static const Color kMenuContainerColor01 = Color(0xFFDAF3D5);
  static const Color kMenuContainerColor02 = Color(0xFFFCEEDA);
  static const Color kMenuContainerColor03 = Color(0xFFF4EFD1);
  static const Color kMenuContainerColor04 = Color(0xFFDFDFEA);

  //linear Gradient
  static const LinearGradient linearGradientCard01 = LinearGradient(
      colors: [
        Color(0xFFD1E2FF),
        Color(0xFFA3BBE2),
      ],
      begin: FractionalOffset(0.0, 0.0),
      end: FractionalOffset(1.0, 0.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);

  static const LinearGradient linearGradientCard02 = LinearGradient(
      colors: [
        Color(0xFFF5E1AE),
        Color(0xFFC19E41),
      ],
      begin: FractionalOffset(0.0, 0.0),
      end: FractionalOffset(1.0, 0.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);

  static const LinearGradient linearGradientCard03 = LinearGradient(
      colors: [
        Color(0xFFACCBFF),
        Color(0xFF86A8E3),
      ],
      begin: FractionalOffset(0.0, 0.0),
      end: FractionalOffset(1.0, 0.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);

}