import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import '../config/colors.dart';
import '../config/constants.dart';
import '../config/fonts.dart';
import 'app_button.dart';


class DefaultAlertView extends StatelessWidget {
  const DefaultAlertView({
    super.key,
    required this.title,
    required this.actionTitle,
    required this.onPressed,
  });

  final String title;
  final String actionTitle;
  final Callback onPressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Theme.of(context).colorScheme.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: AppFonts.styleWithGilroyRegularText(
                  color: Theme.of(context).colorScheme.onBackground, fSize: FontSizeValue.fontSize16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
            child: SizedBox(
              width: 200,
              child: AppButton(
                title: actionTitle,
                borderColor: AppColors.kGreen,
                titleColor: AppColors.kGreen,
                action: onPressed,
              ),
            ),
          )
        ],
      ),
    );
  }
}
