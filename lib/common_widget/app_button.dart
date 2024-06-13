
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../config/colors.dart';
import '../config/constants.dart';
import '../config/fonts.dart';

class AppButton extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color borderColor;
  final double fSize;
  final double buttonRadius;
  final Color titleColor;
  final Callback? action;
  const AppButton({
    super.key,
    required this.title,
    this.backgroundColor = AppColors.kWhite,
    this.borderColor = Colors.transparent,
    this.titleColor = Colors.white,
   this.fSize= FontSizeValue.fontSize14,
   this.buttonRadius= Constants.buttonRadius,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: action,
      textStyle:
          AppFonts.styleWithGilroySemiBoldText(fSize: FontSizeValue.fontSize14),
      constraints: const BoxConstraints(maxWidth: double.infinity),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
      highlightColor: backgroundColor,
      shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: borderColor),
          borderRadius: BorderRadius.circular(buttonRadius)),
      fillColor: action == null ? AppColors.kBorderColor : backgroundColor,
      child: Container(
        // height: Get.height * 0.03,
        height: 24,
        alignment: Alignment.center,
        child: Text(
          title,
          style: AppFonts.styleWithGilroySemiBoldText( color: titleColor,
              fSize: fSize),
        ),
      ),
    );
  }
}
